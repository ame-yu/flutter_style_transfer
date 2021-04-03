import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_style_transfer/services/github/release.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';
import '../styles.dart';

class UpdateAlert extends StatefulWidget {
  @override
  _UpdateAlertState createState() => _UpdateAlertState();
}

class _UpdateAlertState extends State<UpdateAlert> {
  bool loading = true;
  ReleaseInfo? release;
  bool isLatest = true;
  String? errorMsg;

  queryGitubRelease() async {
    try {
      release = await getLatestRelease();
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      isLatest = packageInfo.version.compareTo(release!.version) >= 0;
      return true;
    } catch (e) {
      if (e is DioError) {
        if (e.type == DioErrorType.response) {
          errorMsg = "Github API limited\nplease try again later.";
        } else if (e.type == DioErrorType.connectTimeout ||
            e.type == DioErrorType.receiveTimeout) {
          errorMsg = "Can't connect to github.";
        } else {
          errorMsg = e.message;
        }
      }
    } finally {
      if (!mounted) {
        return;
      }
      setState(() {
        loading = false;
      });
    }
  }

  Widget get centerContent {
    if (release == null) {
      return Text(
          errorMsg ?? "Oops,something goes wrong.\nCan't connect to github.",
          style:
              TextStyle(color: Theme.of(context).accentColor, fontSize: 18.0));
    }
    return isLatest
        ? Text("Current version is up to date.",
            style:
                TextStyle(color: Theme.of(context).accentColor, fontSize: 18.0))
        : Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              children: [
                Text("New release found", style: TextStyles.h2),
                SizedBox(
                  height: 20,
                ),
                Text("${release?.body}",
                    style: TextStyle(
                        color: Theme.of(context).accentColor, fontSize: 18.0)),
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    queryGitubRelease();
    return AlertDialog(
      backgroundColor: Theme.of(context).backgroundColor,
      content: loading ? CircularProgressIndicator() : centerContent,
      actions: isLatest
          ? [
              TextButton(
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ]
          : [
              TextButton.icon(
                icon: Icon(
                  Icons.open_in_new_sharp,
                ),
                label: Text("Download page"),
                onPressed: () async {
                  await launch(release?.htmlUrl ?? RELEASE_PAGE_URL);
                },
              ),
              TextButton(
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close")),
            ],
    );
  }
}
