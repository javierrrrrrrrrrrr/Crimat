// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'almacen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlmacenModel _$AlmacenModelFromJson(Map<String, dynamic> json) => AlmacenModel(
      json['photo'] as String?,
      id: json['id'] as int,
      name: json['nombre'] as String,
      phone: json['telefono'] as String,
      taxes: json['taxes'] as String,
      deleted: json['eliminado'] as bool,
      address: json['direccion'] as num,
      gestor: json['gestor'] as num,
    );

Map<String, dynamic> _$AlmacenModelToJson(AlmacenModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.name,
      'telefono': instance.phone,
      'taxes': instance.taxes,
      'eliminado': instance.deleted,
      'photo': instance.imagen,
      'direccion': instance.address,
      'gestor': instance.gestor,
    };
