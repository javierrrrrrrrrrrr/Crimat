import 'package:json_annotation/json_annotation.dart';

part 'subscriptions_model.g.dart';

@JsonSerializable()
class SubscriptionsModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'tipo_suscripcion')
  final String tipoSuscripcion;
  @JsonKey(name: 'descuento')
  final String descuento;
  @JsonKey(name: 'dias')
  final int dias;
  @JsonKey(name: 'eliminado')
  final bool eliminado;
  @JsonKey(name: 'cant_salones')
  final int cantSalones;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'valor')
  final String valor;

  SubscriptionsModel({
    required this.id,
    required this.tipoSuscripcion,
    required this.descuento,
    required this.dias,
    required this.eliminado,
    required this.cantSalones,
    required this.estado,
    required this.valor,
  });

  factory SubscriptionsModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionsModelToJson(this);
}
