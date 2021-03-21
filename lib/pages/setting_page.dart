import 'dart:ui';
import '../components/utils.dart';
import 'package:flutter/material.dart';

const textStyle = TextStyle(color: Colors.white);

Text whiteText(String str, {double size = 16.0}) {
  return Text(
    str,
    style: TextStyle(fontSize: size, color: Colors.white),
  );
}

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: gradientMask(AssetImage("assets/images/bg2.jpg"),
              bottomColor: Color.fromRGBO(30, 30, 30, 1)),
        ),
        Container(
          child: Container(
            child: ListView(
              children: [
                SwitchListTile(
                  title: whiteText(
                    "Auto Save",
                  ),
                  subtitle: Text("Automatic save photo after transfer."),
                  value: true,
                  onChanged: (val) {},
                ),
                CheckboxListTile(
                  title: whiteText(
                    "Update check",
                  ),
                  value: true,
                  onChanged: (value) {},
                ),
                ListTile(
                  title: whiteText("About"),
                  onTap: () {
                    showAboutDialog(
                      context: context,
                      applicationIcon: Image.asset(
                        "assets/images/appIcon.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                      applicationName: "Image transfer",
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
