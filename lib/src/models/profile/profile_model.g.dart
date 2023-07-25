// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      json['email'] as String,
      json['first_name'] as String,
      json['last_name'] as String,
      json['suscripcion'] as String,
      json['direccion'] as String,
      json['ciudad'] as String,
      json['apartado'] as String,
      json['estado'] as String,
      json['codigo_postal'] as String,
      json['telefono'] as String,
      json['licencia'] as String,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'suscripcion': instance.suscripcion,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'apartado': instance.apartado,
      'estado': instance.estado,
      'codigo_postal': instance.codigoPostal,
      'telefono': instance.telefono,
      'licencia': instance.licencia,
    };
