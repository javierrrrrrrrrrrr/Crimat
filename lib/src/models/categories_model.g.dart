// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriaProductoModel _$CategoriaProductoModelFromJson(
        Map<String, dynamic> json) =>
    CategoriaProductoModel(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      tiposProducto: (json['tipos_producto'] as List<dynamic>)
          .map((e) => TipoProductoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriaProductoModelToJson(
        CategoriaProductoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'tipos_producto': instance.tiposProducto.map((e) => e.toJson()).toList(),
    };

TipoProductoModel _$TipoProductoModelFromJson(Map<String, dynamic> json) =>
    TipoProductoModel(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
    );

Map<String, dynamic> _$TipoProductoModelToJson(TipoProductoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
    };
