// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingModel _$ShippingModelFromJson(Map<String, dynamic> json) =>
    ShippingModel(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      descripcion: json['descripcion'] as String,
      costo: json['costo'] as String,
      tiempoEntrega: json['tiempo_entrega'] as int,
      eliminado: json['eliminado'] as bool,
    );

Map<String, dynamic> _$ShippingModelToJson(ShippingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'costo': instance.costo,
      'tiempo_entrega': instance.tiempoEntrega,
      'eliminado': instance.eliminado,
    };
