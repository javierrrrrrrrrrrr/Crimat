// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) => RequestModel(
      productos: (json['productos'] as List<dynamic>)
          .map((e) => ProductoCantidadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      almacen: json['almacen'] as int,
      tipoEnvio: json['tipo_envio'] as int,
      direcciones:
          (json['direcciones'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$RequestModelToJson(RequestModel instance) =>
    <String, dynamic>{
      'productos': instance.productos,
      'almacen': instance.almacen,
      'tipo_envio': instance.tipoEnvio,
      'direcciones': instance.direcciones,
    };

ProductoCantidadModel _$ProductoCantidadModelFromJson(
        Map<String, dynamic> json) =>
    ProductoCantidadModel(
      producto: json['producto'] as int,
      cantidad: json['cantidad'] as int,
    );

Map<String, dynamic> _$ProductoCantidadModelToJson(
        ProductoCantidadModel instance) =>
    <String, dynamic>{
      'producto': instance.producto,
      'cantidad': instance.cantidad,
    };
