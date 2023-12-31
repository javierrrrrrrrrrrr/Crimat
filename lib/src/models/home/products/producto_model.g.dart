// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['favorito'] as bool?,
      json['almacen'] as int,
      (json['almacen_list'] as List<dynamic>?)
          ?.map((e) => AlmacenModelFavorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      name: json['nombre'] as String,
      description: json['descripcion'] as String,
      image: json['imagen'] as String,
      isForSale: json['en_venta'] as bool,
      saleDate: json['fecha_venta'] as String,
      isVisible: json['visible'] as bool,
      expirationDate: json['fecha_expiracion'] as String,
      validityPeriod: json['tiempo_caducidad'] as num,
      basePrice: (json['precio_base'] as num).toDouble(),
      isAdvertised: json['producto_publicidad'] as bool,
      isLicenceRequired: json['requiere_licencia'] as bool,
      expirationDiscount: (json['descuento_expiracion'] as num).toDouble(),
      monthsDiscounted: json['meses_descuento'] as num,
      invalidityPeriod: json['meses_invalidez'] as num,
      isDeleted: json['eliminado'] as bool,
      minimumValue: (json['minimo'] as num).toDouble(),
      productType: json['tipo'] as int,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'almacen': instance.idAlmacen,
      'almacen_list': instance.almacenList?.map((e) => e.toJson()).toList(),
      'nombre': instance.name,
      'descripcion': instance.description,
      'imagen': instance.image,
      'en_venta': instance.isForSale,
      'fecha_venta': instance.saleDate,
      'visible': instance.isVisible,
      'fecha_expiracion': instance.expirationDate,
      'tiempo_caducidad': instance.validityPeriod,
      'precio_base': instance.basePrice,
      'producto_publicidad': instance.isAdvertised,
      'requiere_licencia': instance.isLicenceRequired,
      'descuento_expiracion': instance.expirationDiscount,
      'meses_descuento': instance.monthsDiscounted,
      'meses_invalidez': instance.invalidityPeriod,
      'eliminado': instance.isDeleted,
      'minimo': instance.minimumValue,
      'tipo': instance.productType,
      'favorito': instance.favorite,
    };

AlmacenModelFavorite _$AlmacenModelFavoriteFromJson(
        Map<String, dynamic> json) =>
    AlmacenModelFavorite(
      id: json['id'] as int,
      name: json['nombre'] as String,
      image: json['imagem'] as String,
      direction:
          DireccionModel.fromJson(json['direccion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlmacenModelFavoriteToJson(
        AlmacenModelFavorite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.name,
      'imagem': instance.image,
      'direccion': instance.direction,
    };

DireccionModel _$DireccionModelFromJson(Map<String, dynamic> json) =>
    DireccionModel(
      id: json['id'] as int,
      address: json['direccion'] as String,
      apartado: json['apartado'] as String,
      city: json['ciudad'] as String,
      state: json['estado'] as String,
      postalCode: json['codigo_postal'] as String,
    );

Map<String, dynamic> _$DireccionModelToJson(DireccionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direccion': instance.address,
      'apartado': instance.apartado,
      'ciudad': instance.city,
      'estado': instance.state,
      'codigo_postal': instance.postalCode,
    };
