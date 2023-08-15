// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_new_salon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalonModel _$SalonModelFromJson(Map<String, dynamic> json) => SalonModel(
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String,
      ciudad: json['ciudad'] as String,
      apartado: json['apartado'] as String,
      estado: json['estado'] as String,
      codigoPostal: json['codigo_postal'] as String,
    );

Map<String, dynamic> _$SalonModelToJson(SalonModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'apartado': instance.apartado,
      'estado': instance.estado,
      'codigo_postal': instance.codigoPostal,
    };
