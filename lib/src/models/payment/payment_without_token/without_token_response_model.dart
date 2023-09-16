import 'package:json_annotation/json_annotation.dart';

part 'without_token_response_model.g.dart';

@JsonSerializable()
class PaymentResponseWithoutTokenModel {
  @JsonKey(name: 'paymentIntent')
  final String paymentIntent;
  @JsonKey(name: 'ephemeralKey')
  final String ephemeralKey;
  @JsonKey(name: 'customer')
  final String customer;
  @JsonKey(name: 'publishableKey')
  final String publishableKey;
  @JsonKey(name: 'orden')
  final OrdenModelResponseWithoutToken orden;

  PaymentResponseWithoutTokenModel({
    required this.paymentIntent,
    required this.ephemeralKey,
    required this.customer,
    required this.publishableKey,
    required this.orden,
  });

  factory PaymentResponseWithoutTokenModel.fromJson(
          Map<String, dynamic> json) =>
      _$PaymentResponseWithoutTokenModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PaymentResponseWithoutTokenModelToJson(this);
}

@JsonSerializable()
class OrdenModelResponseWithoutToken {
  @JsonKey(name: 'num_orden')
  final String numOrden;
  @JsonKey(name: 'fecha_orden')
  final String fechaOrden;
  @JsonKey(name: 'almacen')
  final String almacen;
  @JsonKey(name: 'cantidad')
  final int cantidad;
  @JsonKey(name: 'descuento')
  final double? descuento;
  @JsonKey(name: 'impuesto')
  final double impuesto;
  @JsonKey(name: 'costo_envio')
  final double costoEnvio;
  @JsonKey(name: 'monto_total')
  final double montoTotal;
  @JsonKey(name: 'direcciones')
  final List<DireccionModelResponseWithoutToken> direcciones;
  @JsonKey(name: 'productos')
  final List<ProductoModelResponseWithoutToken> productos;
  @JsonKey(name: 'unregister_user')
  final UnregisterUserResponseWithoutTokenModel unregisterUser;

  OrdenModelResponseWithoutToken({
    required this.numOrden,
    required this.fechaOrden,
    required this.almacen,
    required this.cantidad,
    required this.descuento,
    required this.impuesto,
    required this.costoEnvio,
    required this.montoTotal,
    required this.direcciones,
    required this.productos,
    required this.unregisterUser,
  });

  factory OrdenModelResponseWithoutToken.fromJson(Map<String, dynamic> json) =>
      _$OrdenModelResponseWithoutTokenFromJson(json);

  Map<String, dynamic> toJson() => _$OrdenModelResponseWithoutTokenToJson(this);
}

@JsonSerializable()
class DireccionModelResponseWithoutToken {
  @JsonKey(name: 'direccion')
  final String direccion;
  @JsonKey(name: 'ciudad')
  final String ciudad;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'postal')
  final String postal;

  DireccionModelResponseWithoutToken({
    required this.direccion,
    required this.ciudad,
    required this.apartado,
    required this.estado,
    required this.postal,
  });

  factory DireccionModelResponseWithoutToken.fromJson(
          Map<String, dynamic> json) =>
      _$DireccionModelResponseWithoutTokenFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DireccionModelResponseWithoutTokenToJson(this);
}

@JsonSerializable()
class ProductoModelResponseWithoutToken {
  @JsonKey(name: 'precio')
  final double precio;
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'cantidad')
  final double cantidad;
  @JsonKey(name: 'imagen')
  final String imagen;

  ProductoModelResponseWithoutToken({
    required this.precio,
    required this.nombre,
    required this.cantidad,
    required this.imagen,
  });

  factory ProductoModelResponseWithoutToken.fromJson(
          Map<String, dynamic> json) =>
      _$ProductoModelResponseWithoutTokenFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductoModelResponseWithoutTokenToJson(this);
}

@JsonSerializable()
class UnregisterUserResponseWithoutTokenModel {
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'apellidos')
  final String apellidos;
  @JsonKey(name: 'telefono')
  final String telefono;
  @JsonKey(name: 'email')
  final String email;

  UnregisterUserResponseWithoutTokenModel({
    required this.nombre,
    required this.apellidos,
    required this.telefono,
    required this.email,
  });

  factory UnregisterUserResponseWithoutTokenModel.fromJson(
          Map<String, dynamic> json) =>
      _$UnregisterUserResponseWithoutTokenModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UnregisterUserResponseWithoutTokenModelToJson(this);
}
