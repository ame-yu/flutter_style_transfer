import 'package:flutter/material.dart';

// part 'demopage/shopping.dart';
// part 'demopage/mypage.dart';
import './demopage/mypage.dart';
import './blocs/image_bloc.dart';
import './services/image/image_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (context) => BlocProvider(
            create: (context) =>
                ImageBloc(ImageFacade())..add(ImageEvent.loadModel()),
            child: MyHome(),
          ),
    },
    // debugShowCheckedModeBanner: false,
    title: 'Image transfer',
  ));
}
