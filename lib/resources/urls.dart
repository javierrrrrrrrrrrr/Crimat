class Urls {
  ///Whiletrue server
  /////whiletruecu.com
  /////Crimatus
  static const String host = 'whiletruecu.com';
  static const String api = 'whiletruecu.com';
  static const String hostApi = '/crimat-development/api';

  ///Auth services
  static String get login => '$hostApi/token/';
  static String get register => '$hostApi/nuevo_cliente/';
  static String get changePassword => '$hostApi/change-password/';
  static String get resetPassword => '$hostApi/reset-password/';

  static String get getAlmacen => 'crimat-development/api/almacenes/';
  static String get getproducts => 'crimat-development/api/productos';
  static String get getcategories => 'crimat-development/api/categorias/';
  static String get gethistorial => 'crimat-development/api/ordenes/';
  static String get getProfilData => 'crimat-development/api/user/';
  static String get getFavorite => 'crimat-development/api/favoritos/';
  static String get addFavorite => 'crimat-development/api/add_favorito/';
  static String get deleteFavorite => 'crimat-development/api/remove_favorito/';
  static String get getPaymentData => 'crimat-development/api/nueva_orden/';
  static String get getShippingMethods => 'crimat-development/api/envios/';
  static String get createNewSalon => 'crimat-development/api/salon/';
  static String get getSubscriptionsData =>'crimat-development/api/suscripciones/';
  static String get buySubscriptionsData =>'crimat-development/api/comprar_suscripcion/';
}
