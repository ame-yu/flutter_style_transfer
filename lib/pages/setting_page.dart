import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_style_transfer/components/update_alert.dart';
import '../components/utils.dart';
import '../cubit/setting_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../styles.dart';
import 'package:package_info/package_info.dart';

const textStyle = TextStyle(color: Colors.white);

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String currentVersion = "";

  @override
  Widget build(BuildContext context) {
    void queryInfo() async {
      var version = (await PackageInfo.fromPlatform()).version;
      setState(() {
        currentVersion = version;
      });
    }

    queryInfo();

    return BlocBuilder<SettingCubit, SettingState>(
        builder: (BuildContext context, SettingState state) {
      return Stack(
        children: [
          SizedBox.expand(
            child: gradientMask(AssetImage("assets/images/bg2.jpg"),
                bottomColor: Theme.of(context).backgroundColor,
                maskColor: Theme.of(context).backgroundColor.withOpacity(.5)),
          ),
          Container(
            child: ListView(
              children: [
                SwitchListTile(
                  title: Text(
                    "History record",
                    style: TextStyles.title1,
                  ),
                  subtitle: Text(
                    "Automatic save photo after transfer.",
                    style: TextStyles.title2,
                  ),
                  value: state.autoSave,
                  onChanged: (val) {
                    context.read<SettingCubit>().toggleAutoSave();
                  },
                ),
                ListTile(
                    title: Text(
                      "Check update",
                      style: TextStyles.title1,
                    ),
                    subtitle: Text(
                      currentVersion,
                      style: TextStyles.title2,
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => UpdateAlert());
                    }),
                ListTile(
                  title: Text(
                    "About",
                    style: TextStyles.title1,
                  ),
                  onTap: () {
                    showAboutDialog(
                      applicationName: "flutter style transfer",
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
    });
  }
}
