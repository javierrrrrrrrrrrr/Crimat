class Urls{
  ///Whiletrue server
  static const String host = 'whiletruecu.com';
  static const String api = '/crimat-development/api';

  ///Auth services
  static String get login => '$api/token/';
  static String get register => '$api/nuevo_cliente/';
}