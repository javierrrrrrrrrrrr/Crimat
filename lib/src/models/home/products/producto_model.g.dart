// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['favorito'] as bool?,
      json['almacen'] as int,
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
