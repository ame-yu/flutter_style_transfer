import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/setting_page.dart';
import 'pages/history_page.dart';
import 'pages/main_page.dart';
// part 'demopage/shopping.dart';
// part 'demopage/mypage.dart';
import './blocs/image_bloc.dart';
import './services/image/image_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

part 'pages/page_index.dart';

final theme = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0.0,
  ),
  backgroundColor: Color(0xff222222),
  brightness: Brightness.light,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  runApp(MaterialApp(
      title: 'Image transfer',
      routes: {
        "/": (context) => BlocProvider(
              create: (context) =>
                  ImageBloc(ImageFacade())..add(ImageEvent.loadModel()),
              child: MyHome(),
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
