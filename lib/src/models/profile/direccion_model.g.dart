// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direccion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DireccionModel _$DireccionModelFromJson(Map<String, dynamic> json) =>
    DireccionModel(
      json['id'] as int,
      json['direccion'] as String,
      json['apartado'] as String,
      json['ciudad'] as String,
      json['estado'] as String,
      json['postal'] as String,
    );

Map<String, dynamic> _$DireccionModelToJson(DireccionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direccion': instance.direccion,
      'apartado': instance.apartado,
      'ciudad': instance.ciudad,
      'estado': instance.estado,
      'postal': instance.postal,
    };
