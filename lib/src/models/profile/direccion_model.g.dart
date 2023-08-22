// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direccion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DireccionModel _$DireccionModelFromJson(Map<String, dynamic> json) =>
    DireccionModel(
      codigoPostal: json['codigo_postal'] as String?,
      id: json['id'] as int?,
      direccion: json['direccion'] as String,
      apartado: json['apartado'] as String,
      ciudad: json['ciudad'] as String,
      estado: json['estado'] as String,
      postal: json['postal'] as String?,
    );

Map<String, dynamic> _$DireccionModelToJson(DireccionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direccion': instance.direccion,
      'apartado': instance.apartado,
      'ciudad': instance.ciudad,
      'estado': instance.estado,
      'postal': instance.postal,
      'codigo_postal': instance.codigoPostal,
    };
