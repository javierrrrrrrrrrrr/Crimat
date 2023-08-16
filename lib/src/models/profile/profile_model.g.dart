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
      (json['direcciones'] as List<dynamic>)
          .map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
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
      'direcciones': instance.direcciones,
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

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      id: json['id'] as int?,
      direccion: json['direccion'] as String,
      apartado: json['aparatdo'] as String,
      ciudad: json['ciudad'] as String,
      estado: json['estado'] as String,
      postal: json['postal'] as String,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direccion': instance.direccion,
      'aparatdo': instance.apartado,
      'ciudad': instance.ciudad,
      'estado': instance.estado,
      'postal': instance.postal,
    };
