import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_style_transfer/cubit/setting_cubit.dart';
import 'pages/setting_page.dart';
import 'pages/history_page.dart';
import 'pages/main_page.dart';
import './blocs/image_bloc.dart';
import './blocs/history_bloc.dart';
import './services/image/image_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import './themes.dart';

part 'pages/app_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  runApp(MaterialApp(
    title: 'Image transfer',
    routes: {
      "/": (context) {
        final settingCubit = SettingCubit();
        final imageBloc = ImageBloc(ImageFacade())..add(ImageEvent.loadModel());
        final historyBloc = HistoryBloc(imageBloc, settingCubit);
        //Provider使用懒加载，所以要让对imageBloc监听生效就要先加载完
        return MultiBlocProvider(
          providers: [
            BlocProvider<ImageBloc>(
              create: (_) => imageBloc,
            ),
            BlocProvider<HistoryBloc>(
              create: (_) => historyBloc,
            ),
            BlocProvider(
              create: (_) => settingCubit,
            )
          ],
          child: App(),
        );
      },
    },
    debugShowCheckedModeBanner: false,
    theme: theme,
    darkTheme: darkTheme,
  ));

  if (Platform.isAndroid) {
    //透明导航栏
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
