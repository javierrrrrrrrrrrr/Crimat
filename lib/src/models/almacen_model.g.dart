// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'almacen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlmacenModel _$AlmacenModelFromJson(Map<String, dynamic> json) => AlmacenModel(
      name: json['nombre'] as String,
      phone: json['telefono'] as String,
      taxes: json['taxes'] as String,
      deleted: json['eliminado'] as bool,
      address: json['direccion'] as num,
      gestor: json['gestor'] as num,
    );

Map<String, dynamic> _$AlmacenModelToJson(AlmacenModel instance) =>
    <String, dynamic>{
      'nombre': instance.name,
      'telefono': instance.phone,
      'taxes': instance.taxes,
      'eliminado': instance.deleted,
      'direccion': instance.address,
      'gestor': instance.gestor,
    };
