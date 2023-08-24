import 'package:json_annotation/json_annotation.dart';

part 'request_data_model.g.dart';

@JsonSerializable()
class RequestModel {
  @JsonKey(name: 'productos')
  final List<ProductoCantidadModel> productos;

  @JsonKey(name: 'almacen')
  final int almacen;

  @JsonKey(name: 'tipo_envio')
  final int tipoEnvio;

  @JsonKey(name: 'direcciones')
  final List<int> direcciones;

  RequestModel({
    required this.productos,
    required this.almacen,
    required this.tipoEnvio,
    required this.direcciones,
  });

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestModelToJson(this);
}

@JsonSerializable()
class ProductoCantidadModel {
  @JsonKey(name: 'producto')
  final int producto;

  @JsonKey(name: 'cantidad')
  final int cantidad;

  ProductoCantidadModel({
    required this.producto,
    required this.cantidad,
  });

  factory ProductoCantidadModel.fromJson(Map<String, dynamic> json) =>
      _$ProductoCantidadModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductoCantidadModelToJson(this);
}
