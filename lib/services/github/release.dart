import 'package:dio/dio.dart';

final API_URL =
    "https://api.github.com/repos/ame-yu/flutter_style_transfer/releases";
final RELEASE_PAGE_URL =
    "https://github.com/ame-yu/flutter_style_transfer/releases";

class ReleaseInfo {
  String version;
  DateTime date;
  String body;
  String htmlUrl;
  ReleaseInfo(this.version, this.date, this.body, this.htmlUrl);
}

final BaseOptions options = BaseOptions(
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

Future<ReleaseInfo?> getLatestRelease() async {
  try {
    var response = await Dio(options).get(API_URL);
    var latest = response.data[0];
    DateTime date = DateTime.parse(latest["published_at"]);
    String versionTag = latest["tag_name"];
    String body = latest["body"];
    String htmlUrl = latest["html_url"];
    return ReleaseInfo(versionTag, date, body, htmlUrl);
  } catch (e) {
    // print(e);
    throw e;
  }
}
