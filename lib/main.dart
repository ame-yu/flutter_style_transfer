import 'package:flutter/material.dart';

// part 'demopage/shopping.dart';
// part 'demopage/mypage.dart';
import './demopage/mypage.dart';
import './blocs/image_bloc.dart';
import './services/image/image_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

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
    // debugShowCheckedModeBanner: false,
  ));
}
