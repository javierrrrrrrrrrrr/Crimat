// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historial_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdenModel _$OrdenModelFromJson(Map<String, dynamic> json) => OrdenModel(
      orderNumber: json['num_orden'] as String,
      orderDate: json['fecha_orden'] as String,
      warehouse: json['almacen'] as String,
      quantity: json['cantidad'] as int,
      discount: (json['descuento'] as num).toDouble(),
      tax: (json['impuesto'] as num).toDouble(),
      shippingCost: (json['costo_envio'] as num).toDouble(),
      totalAmount: (json['monto_total'] as num).toDouble(),
      addresses: (json['direcciones'] as List<dynamic>)
          .map((e) => DireccionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['productos'] as List<dynamic>)
          .map((e) => ProductoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdenModelToJson(OrdenModel instance) =>
    <String, dynamic>{
      'num_orden': instance.orderNumber,
      'fecha_orden': instance.orderDate,
      'almacen': instance.warehouse,
      'cantidad': instance.quantity,
      'descuento': instance.discount,
      'impuesto': instance.tax,
      'costo_envio': instance.shippingCost,
      'monto_total': instance.totalAmount,
      'direcciones': instance.addresses,
      'productos': instance.products,
    };

DireccionModel _$DireccionModelFromJson(Map<String, dynamic> json) =>
    DireccionModel(
      address: json['direccion'] as String,
      city: json['ciudad'] as String,
      apartado: json['apartado'] as String,
      state: json['estado'] as String,
      postalCode: json['codigo postal'] as String,
    );

Map<String, dynamic> _$DireccionModelToJson(DireccionModel instance) =>
    <String, dynamic>{
      'direccion': instance.address,
      'ciudad': instance.city,
      'apartado': instance.apartado,
      'estado': instance.state,
      'codigo postal': instance.postalCode,
    };

ProductoModel _$ProductoModelFromJson(Map<String, dynamic> json) =>
    ProductoModel(
      json['imagen'] as String,
      price: (json['precio'] as num).toDouble(),
      name: json['nombre'] as String,
      quantity: (json['cantidad'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductoModelToJson(ProductoModel instance) =>
    <String, dynamic>{
      'precio': instance.price,
      'nombre': instance.name,
      'cantidad': instance.quantity,
      'imagen': instance.imagen,
    };
