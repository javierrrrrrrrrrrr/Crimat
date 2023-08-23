import 'package:json_annotation/json_annotation.dart';

part 'shipping_model.g.dart';

@JsonSerializable()
class ShippingModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'nombre')
  final String nombre;

  @JsonKey(name: 'descripcion')
  final String descripcion;

  @JsonKey(name: 'costo')
  final String costo;

  @JsonKey(name: 'tiempo_entrega')
  final int tiempoEntrega;

  @JsonKey(name: 'eliminado')
  final bool eliminado;

  ShippingModel({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.costo,
    required this.tiempoEntrega,
    required this.eliminado,
  });

  factory ShippingModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingModelToJson(this);
}
