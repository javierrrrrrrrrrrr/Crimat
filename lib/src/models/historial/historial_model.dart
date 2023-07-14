import 'package:json_annotation/json_annotation.dart';

part 'historial_model.g.dart';

@JsonSerializable()
class OrdenModel {
  @JsonKey(name: 'num_orden')
  final String orderNumber;
  @JsonKey(name: 'fecha_orden')
  final String orderDate;
  @JsonKey(name: 'almacen')
  final String warehouse;
  @JsonKey(name: 'cantidad')
  final int quantity;
  @JsonKey(name: 'descuento')
  final double discount;
  @JsonKey(name: 'impuesto')
  final double tax;
  @JsonKey(name: 'costo_envio')
  final double shippingCost;
  @JsonKey(name: 'monto_total')
  final double totalAmount;
  @JsonKey(name: 'direcciones')
  final List<DireccionModel> addresses;
  @JsonKey(name: 'productos')
  final List<ProductoModel> products;

  OrdenModel({
    required this.orderNumber,
    required this.orderDate,
    required this.warehouse,
    required this.quantity,
    required this.discount,
    required this.tax,
    required this.shippingCost,
    required this.totalAmount,
    required this.addresses,
    required this.products,
  });

  factory OrdenModel.fromJson(Map<String, dynamic> json) =>
      _$OrdenModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdenModelToJson(this);
}

@JsonSerializable()
class DireccionModel {
  @JsonKey(name: 'direccion')
  final String address;
  @JsonKey(name: 'ciudad')
  final String city;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'estado')
  final String state;
  @JsonKey(name: 'codigo postal')
  final String postalCode;

  DireccionModel({
    required this.address,
    required this.city,
    required this.apartado,
    required this.state,
    required this.postalCode,
  });

  factory DireccionModel.fromJson(Map<String, dynamic> json) =>
      _$DireccionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DireccionModelToJson(this);
}

@JsonSerializable()
class ProductoModel {
  @JsonKey(name: 'precio')
  final double price;
  @JsonKey(name: 'nombre')
  final String name;
  @JsonKey(name: 'cantidad')
  final double quantity;

  ProductoModel({
    required this.price,
    required this.name,
    required this.quantity,
  });

  factory ProductoModel.fromJson(Map<String, dynamic> json) =>
      _$ProductoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductoModelToJson(this);
}
