// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'without_token_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRequestModelWithoutToken _$OrderRequestModelWithoutTokenFromJson(
        Map<String, dynamic> json) =>
    OrderRequestModelWithoutToken(
      productos: (json['productos'] as List<dynamic>)
          .map((e) => ProductoCantidadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      almacen: json['almacen'] as int,
      tipoEnvio: json['tipo_envio'] as int,
      unregister:
          UnregisterModel.fromJson(json['unregister'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRequestModelWithoutTokenToJson(
        OrderRequestModelWithoutToken instance) =>
    <String, dynamic>{
      'productos': instance.productos,
      'almacen': instance.almacen,
      'tipo_envio': instance.tipoEnvio,
      'unregister': instance.unregister,
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

UnregisterModel _$UnregisterModelFromJson(Map<String, dynamic> json) =>
    UnregisterModel(
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      email: json['email'] as String,
      telefono: json['telefono'] as String,
      direccion: DireccionModelWithoutToken.fromJson(
          json['direccion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnregisterModelToJson(UnregisterModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'email': instance.email,
      'telefono': instance.telefono,
      'direccion': instance.direccion,
    };

DireccionModelWithoutToken _$DireccionModelWithoutTokenFromJson(
        Map<String, dynamic> json) =>
    DireccionModelWithoutToken(
      direccion: json['direccion'] as String,
      apartado: json['apartado'] as String,
      ciudad: json['ciudad'] as String,
      estado: json['estado'] as String,
      codigoPostal: json['codigo_postal'] as String,
    );

Map<String, dynamic> _$DireccionModelWithoutTokenToJson(
        DireccionModelWithoutToken instance) =>
    <String, dynamic>{
      'direccion': instance.direccion,
      'apartado': instance.apartado,
      'ciudad': instance.ciudad,
      'estado': instance.estado,
      'codigo_postal': instance.codigoPostal,
    };
