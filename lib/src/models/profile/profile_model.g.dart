// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      json['email'] as String,
      json['first_name'] as String,
      json['last_name'] as String,
      json['telefono'] as String,
      json['licencia'] as String,
      SuscripcionModel.fromJson(json['suscripcion'] as Map<String, dynamic>),
      (json['salones'] as List<dynamic>)
          .map((e) => SalonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'telefono': instance.telefono,
      'licencia': instance.licencia,
      'suscripcion': instance.suscripcion,
      'salones': instance.salones,
    };

SuscripcionModel _$SuscripcionModelFromJson(Map<String, dynamic> json) =>
    SuscripcionModel(
      json['tipo'] as String,
      (json['descuento'] as num).toDouble(),
      json['dias_visibilidad'] as int,
      json['cant_salones'] as int,
      (json['valor'] as num).toDouble(),
    );

Map<String, dynamic> _$SuscripcionModelToJson(SuscripcionModel instance) =>
    <String, dynamic>{
      'tipo': instance.tipo,
      'descuento': instance.descuento,
      'dias_visibilidad': instance.diasVisibilidad,
      'cant_salones': instance.cantSalones,
      'valor': instance.valor,
    };

SalonModel _$SalonModelFromJson(Map<String, dynamic> json) => SalonModel(
      json['id'] as int,
      json['nombre'] as String,
      DireccionModel.fromJson(json['direccion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalonModelToJson(SalonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'direccion': instance.direccion,
    };
