///This class is a singleton for sharing information through the whole app

class AppUtilInfo {
  String? accessToken;
  String? refreshToken;

  static final AppUtilInfo _appInfo = AppUtilInfo._internal();

  factory AppUtilInfo() {
    return _appInfo;
  }

  AppUtilInfo._internal();
}
