import 'package:json_annotation/json_annotation.dart';

part 'payment_model.g.dart';

@JsonSerializable()
class PaymentModel {
  @JsonKey(name: 'paymentIntent')
  final String paymentIntent;

  @JsonKey(name: 'ephemeralKey')
  final String ephemeralKey;

  @JsonKey(name: 'customer')
  final String customer;

  @JsonKey(name: 'publishableKey')
  final String publishableKey;

  @JsonKey(name: 'orden')
  final OrdenModel orden;

  PaymentModel({
    required this.paymentIntent,
    required this.ephemeralKey,
    required this.customer,
    required this.publishableKey,
    required this.orden,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);
}

@JsonSerializable()
class OrdenModel {
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
  final List<DireccionModel> direcciones;

  @JsonKey(name: 'productos')
  final List<ProductoModel> productos;

  OrdenModel({
    required this.numOrden,
    required this.fechaOrden,
    required this.almacen,
    required this.cantidad,
    this.descuento,
    required this.impuesto,
    required this.costoEnvio,
    required this.montoTotal,
    required this.direcciones,
    required this.productos,
  });

  factory OrdenModel.fromJson(Map<String, dynamic> json) =>
      _$OrdenModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdenModelToJson(this);
}

@JsonSerializable()
class DireccionModel {
  @JsonKey(name: 'direccion')
  final String direccion;

  @JsonKey(name: 'ciudad')
  final String ciudad;

  @JsonKey(name: 'apartado')
  final String apartado;

  @JsonKey(name: 'estado')
  final String estado;

  @JsonKey(name: 'codigo postal')
  final String? codigoPostal;

  DireccionModel({
    required this.direccion,
    required this.ciudad,
    required this.apartado,
    required this.estado,
    this.codigoPostal,
  });

  factory DireccionModel.fromJson(Map<String, dynamic> json) =>
      _$DireccionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DireccionModelToJson(this);
}

@JsonSerializable()
class ProductoModel {
  @JsonKey(name: 'precio')
  final double precio;

  @JsonKey(name: 'nombre')
  final String nombre;

  @JsonKey(name: 'cantidad')
  final double cantidad;

  @JsonKey(name: 'imagen')
  final String imagen;

  ProductoModel({
    required this.precio,
    required this.nombre,
    required this.cantidad,
    required this.imagen,
  });

  factory ProductoModel.fromJson(Map<String, dynamic> json) =>
      _$ProductoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductoModelToJson(this);
}
