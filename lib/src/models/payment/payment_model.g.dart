// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) => PaymentModel(
      paymentIntent: json['paymentIntent'] as String,
      ephemeralKey: json['ephemeralKey'] as String,
      customer: json['customer'] as String,
      publishableKey: json['publishableKey'] as String,
      orden: OrdenModel.fromJson(json['orden'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) =>
    <String, dynamic>{
      'paymentIntent': instance.paymentIntent,
      'ephemeralKey': instance.ephemeralKey,
      'customer': instance.customer,
      'publishableKey': instance.publishableKey,
      'orden': instance.orden,
    };

OrdenModel _$OrdenModelFromJson(Map<String, dynamic> json) => OrdenModel(
      numOrden: json['num_orden'] as String,
      fechaOrden: json['fecha_orden'] as String,
      almacen: json['almacen'] as String,
      cantidad: json['cantidad'] as int,
      descuento: (json['descuento'] as num?)?.toDouble(),
      impuesto: (json['impuesto'] as num).toDouble(),
      costoEnvio: (json['costo_envio'] as num).toDouble(),
      montoTotal: (json['monto_total'] as num).toDouble(),
      direcciones: (json['direcciones'] as List<dynamic>)
          .map((e) => DireccionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      productos: (json['productos'] as List<dynamic>)
          .map((e) => ProductoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdenModelToJson(OrdenModel instance) =>
    <String, dynamic>{
      'num_orden': instance.numOrden,
      'fecha_orden': instance.fechaOrden,
      'almacen': instance.almacen,
      'cantidad': instance.cantidad,
      'descuento': instance.descuento,
      'impuesto': instance.impuesto,
      'costo_envio': instance.costoEnvio,
      'monto_total': instance.montoTotal,
      'direcciones': instance.direcciones,
      'productos': instance.productos,
    };

DireccionModel _$DireccionModelFromJson(Map<String, dynamic> json) =>
    DireccionModel(
      direccion: json['direccion'] as String,
      ciudad: json['ciudad'] as String,
      apartado: json['apartado'] as String,
      estado: json['estado'] as String,
      codigoPostal: json['codigo postal'] as String,
    );

Map<String, dynamic> _$DireccionModelToJson(DireccionModel instance) =>
    <String, dynamic>{
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'apartado': instance.apartado,
      'estado': instance.estado,
      'codigo postal': instance.codigoPostal,
    };

ProductoModel _$ProductoModelFromJson(Map<String, dynamic> json) =>
    ProductoModel(
      precio: (json['precio'] as num).toDouble(),
      nombre: json['nombre'] as String,
      cantidad: (json['cantidad'] as num).toDouble(),
      imagen: json['imagen'] as String,
    );

Map<String, dynamic> _$ProductoModelToJson(ProductoModel instance) =>
    <String, dynamic>{
      'precio': instance.precio,
      'nombre': instance.nombre,
      'cantidad': instance.cantidad,
      'imagen': instance.imagen,
    };
