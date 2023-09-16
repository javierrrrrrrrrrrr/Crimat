// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_salon_request_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DireccionModel _$DireccionModelFromJson(Map<String, dynamic> json) =>
    DireccionModel(
      direccion: json['direccion'] as String,
      apartado: json['apartado'] as String,
      ciudad: json['ciudad'] as String,
      estado: json['estado'] as String,
      codigoPostal: json['codigo_postal'] as String,
    );

Map<String, dynamic> _$DireccionModelToJson(DireccionModel instance) =>
    <String, dynamic>{
      'direccion': instance.direccion,
      'apartado': instance.apartado,
      'ciudad': instance.ciudad,
      'estado': instance.estado,
      'codigo_postal': instance.codigoPostal,
    };

SalonRequestModel _$SalonRequestModelFromJson(Map<String, dynamic> json) =>
    SalonRequestModel(
      nombre: json['nombre'] as String,
      direccion:
          DireccionModel.fromJson(json['direccion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalonRequestModelToJson(SalonRequestModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'direccion': instance.direccion,
    };
