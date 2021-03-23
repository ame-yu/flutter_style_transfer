import 'dart:ui';
import '../components/utils.dart';
import '../blocs/setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const textStyle = TextStyle(color: Colors.white);

Text whiteText(String str, {double size = 16.0, color = Colors.white}) {
  return Text(
    str,
    style: TextStyle(fontSize: size, color: color),
  );
}

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => SettingCubit(),
        child: BlocBuilder<SettingCubit, Setting>(
            builder: (BuildContext context, Setting state) {
          return Stack(
            children: [
              SizedBox.expand(
                child: gradientMask(AssetImage("assets/images/bg2.jpg"),
                    bottomColor: Color.fromRGBO(30, 30, 30, 1)),
              ),
              Container(
                child: ListView(
                  children: [
                    SwitchListTile(
                      title: whiteText(
                        "History record",
                      ),
                      subtitle: whiteText(
                          "Automatic save photo after transfer.",
                          size: 14,
                          color: Colors.white54),
                      value: state.autoSave,
                      onChanged: (val) {
                        context.read<SettingCubit>().toggleAutoSave();
                      },
                    ),
                    CheckboxListTile(
                      title: whiteText(
                        "Update check",
                      ),
                      subtitle: whiteText("Coming soon...",
                          size: 14, color: Colors.white54),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    ListTile(
                      title: whiteText("About"),
                      onTap: () {
                        showAboutDialog(
                          applicationName: "Image transfer",
                          applicationVersion: "1.0.0",
                          context: context,
                          applicationIcon: ClipOval(
                            child: Image.asset(
                              "assets/images/appIcon.png",
                              height: 75,
                              width: 75,
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
