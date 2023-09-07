// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionsModel _$SubscriptionsModelFromJson(Map<String, dynamic> json) =>
    SubscriptionsModel(
      id: json['id'] as int,
      tipoSuscripcion: json['tipo_suscripcion'] as String,
      descuento: json['descuento'] as String,
      dias: json['dias'] as int,
      eliminado: json['eliminado'] as bool,
      cantSalones: json['cant_salones'] as int,
      valor: json['valor'] as String,
    );

Map<String, dynamic> _$SubscriptionsModelToJson(SubscriptionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tipo_suscripcion': instance.tipoSuscripcion,
      'descuento': instance.descuento,
      'dias': instance.dias,
      'eliminado': instance.eliminado,
      'cant_salones': instance.cantSalones,
      'valor': instance.valor,
    };
