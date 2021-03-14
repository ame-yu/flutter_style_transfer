import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SwitchListTile(
            title: Text("Auto Save"),
            subtitle: Text("Automatic save photo after transfer."),
            value: true,
            onChanged: (val) {},
          ),
          CheckboxListTile(
            title: Text("Update check"),
            value: true,
            onChanged: (value) {},
          ),
          AboutListTile(
            applicationName: "Image transfer",
            applicationIcon: Image.asset("assets/images/appIcon.png"),
          ),
        ],
      ),
    );
  }
}
