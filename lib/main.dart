import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_style_transfer/model/history.dart';
import 'pages/setting_page.dart';
import 'pages/history_page.dart';
import 'pages/main_page.dart';
import './blocs/image_bloc.dart';
import './services/image/image_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

part 'pages/app_home.dart';

final theme = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0.0,
  ),
  backgroundColor: Color.fromRGBO(30, 30, 30, 1),
  brightness: Brightness.light,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  DbHistory.loadDB();
  runApp(MaterialApp(
      title: 'Image transfer',
      routes: {
        "/": (context) => MultiBlocProvider(
              providers: [
                BlocProvider<ImageBloc>(
                  create: (context) =>
                      ImageBloc(ImageFacade())..add(ImageEvent.loadModel()),
                ),
                // BlocProvider<HistoryBloc>(
                //   create: (context) => HistoryBloc(),
                // )
              ],
              child: App(),
            ),
      },
      debugShowCheckedModeBanner: false,
      theme: theme));

  if (Platform.isAndroid) {
    //透明导航栏
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
