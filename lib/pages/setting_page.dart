import 'dart:ui';
import '../components/utils.dart';
import '../blocs/setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const textStyle = TextStyle(color: Colors.white);

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Text coloredText(String str,
        {bool bold = false, double size = 16.0, Color? color}) {
      return Text(
        str,
        style: TextStyle(
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            fontSize: size,
            color: color ??
                (size >= 16
                    ? Theme.of(context).accentColor
                    : Theme.of(context).accentColor.withOpacity(.5))),
      );
    }

    return BlocProvider(
        create: (_) => SettingCubit(),
        child: BlocBuilder<SettingCubit, Setting>(
            builder: (BuildContext context, Setting state) {
          return Stack(
            children: [
              SizedBox.expand(
                child: gradientMask(AssetImage("assets/images/bg2.jpg"),
                    bottomColor: Theme.of(context).backgroundColor,
                    maskColor:
                        Theme.of(context).backgroundColor.withOpacity(.5)),
              ),
              Container(
                child: ListView(
                  children: [
                    SwitchListTile(
                      title: coloredText(
                        "History record",
                      ),
                      subtitle: coloredText(
                          "Automatic save photo after transfer.",
                          size: 14,
                          color: Theme.of(context).accentColor.withOpacity(.7)),
                      value: state.autoSave,
                      onChanged: (val) {
                        context.read<SettingCubit>().toggleAutoSave();
                      },
                    ),
                    CheckboxListTile(
                      title: coloredText(
                        "Update check",
                      ),
                      subtitle: coloredText("Coming soon...", size: 14),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    ListTile(
                      title: coloredText("About"),
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
