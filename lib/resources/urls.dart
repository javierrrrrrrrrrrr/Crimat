class Urls {
  ///Whiletrue server
  static const String host = 'whiletruecu.com';
  static const String api = 'whiletruecu.com';
  static const String host_api = '/crimat-development/api';

  ///Auth services
  static String get login => '$host_api/token/';
  static String get register => '$host_api/nuevo_cliente/';
  static String get changePassword => '$host_api/change-password/';
  static String get resetPassword => '$host_api/reset-password/';

  static String get getAlmacen => 'crimat-development/api/almacenes/';
  static String get getproducts => 'crimat-development/api/productos';
  static String get getcategories => 'crimat-development/api/categorias/';
  static String get gethistorial => 'crimat-development/api/ordenes/';
  static String get getProfilData => 'crimat-development/api/user/';
}
