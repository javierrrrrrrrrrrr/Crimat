// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'without_token_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponseWithoutTokenModel _$PaymentResponseWithoutTokenModelFromJson(
        Map<String, dynamic> json) =>
    PaymentResponseWithoutTokenModel(
      paymentIntent: json['paymentIntent'] as String,
      ephemeralKey: json['ephemeralKey'] as String,
      customer: json['customer'] as String,
      publishableKey: json['publishableKey'] as String,
      orden: OrdenModelResponseWithoutToken.fromJson(
          json['orden'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentResponseWithoutTokenModelToJson(
        PaymentResponseWithoutTokenModel instance) =>
    <String, dynamic>{
      'paymentIntent': instance.paymentIntent,
      'ephemeralKey': instance.ephemeralKey,
      'customer': instance.customer,
      'publishableKey': instance.publishableKey,
      'orden': instance.orden,
    };

OrdenModelResponseWithoutToken _$OrdenModelResponseWithoutTokenFromJson(
        Map<String, dynamic> json) =>
    OrdenModelResponseWithoutToken(
      numOrden: json['num_orden'] as String,
      fechaOrden: json['fecha_orden'] as String,
      almacen: json['almacen'] as String,
      cantidad: json['cantidad'] as int,
      descuento: (json['descuento'] as num?)?.toDouble(),
      impuesto: (json['impuesto'] as num).toDouble(),
      costoEnvio: (json['costo_envio'] as num).toDouble(),
      montoTotal: (json['monto_total'] as num).toDouble(),
      direcciones: (json['direcciones'] as List<dynamic>)
          .map((e) => DireccionModelResponseWithoutToken.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      productos: (json['productos'] as List<dynamic>)
          .map((e) => ProductoModelResponseWithoutToken.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      unregisterUser: UnregisterUserResponseWithoutTokenModel.fromJson(
          json['unregister_user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdenModelResponseWithoutTokenToJson(
        OrdenModelResponseWithoutToken instance) =>
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
      'unregister_user': instance.unregisterUser,
    };

DireccionModelResponseWithoutToken _$DireccionModelResponseWithoutTokenFromJson(
        Map<String, dynamic> json) =>
    DireccionModelResponseWithoutToken(
      direccion: json['direccion'] as String,
      ciudad: json['ciudad'] as String,
      apartado: json['apartado'] as String,
      estado: json['estado'] as String,
      postal: json['postal'] as String,
    );

Map<String, dynamic> _$DireccionModelResponseWithoutTokenToJson(
        DireccionModelResponseWithoutToken instance) =>
    <String, dynamic>{
      'direccion': instance.direccion,
      'ciudad': instance.ciudad,
      'apartado': instance.apartado,
      'estado': instance.estado,
      'postal': instance.postal,
    };

ProductoModelResponseWithoutToken _$ProductoModelResponseWithoutTokenFromJson(
        Map<String, dynamic> json) =>
    ProductoModelResponseWithoutToken(
      precio: (json['precio'] as num).toDouble(),
      nombre: json['nombre'] as String,
      cantidad: (json['cantidad'] as num).toDouble(),
      imagen: json['imagen'] as String,
    );

Map<String, dynamic> _$ProductoModelResponseWithoutTokenToJson(
        ProductoModelResponseWithoutToken instance) =>
    <String, dynamic>{
      'precio': instance.precio,
      'nombre': instance.nombre,
      'cantidad': instance.cantidad,
      'imagen': instance.imagen,
    };

UnregisterUserResponseWithoutTokenModel
    _$UnregisterUserResponseWithoutTokenModelFromJson(
            Map<String, dynamic> json) =>
        UnregisterUserResponseWithoutTokenModel(
          nombre: json['nombre'] as String,
          apellidos: json['apellidos'] as String,
          telefono: json['telefono'] as String,
          email: json['email'] as String,
        );

Map<String, dynamic> _$UnregisterUserResponseWithoutTokenModelToJson(
        UnregisterUserResponseWithoutTokenModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'telefono': instance.telefono,
      'email': instance.email,
    };
