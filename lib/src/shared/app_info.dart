///This class is a singleton for sharing information through the whole app

class AppInfo{
  String? accessToken;
  String? refreshToken;

  static final AppInfo _appInfo = AppInfo._internal();

  factory AppInfo() {
    return _appInfo;
  }

  AppInfo._internal();


}