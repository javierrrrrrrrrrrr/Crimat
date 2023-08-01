import 'package:json_annotation/json_annotation.dart';
part 'producto_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'almacen')
  final int idAlmacen;
  @JsonKey(name: 'nombre')
  final String name;
  @JsonKey(name: 'descripcion')
  final String description;
  @JsonKey(name: 'imagen')
  final String image;
  @JsonKey(name: 'en_venta')
  final bool isForSale;
  @JsonKey(name: 'fecha_venta')
  final String saleDate;
  @JsonKey(name: 'visible')
  final bool isVisible;
  @JsonKey(name: 'fecha_expiracion')
  final String expirationDate;
  @JsonKey(name: 'tiempo_caducidad')
  final num validityPeriod;
  @JsonKey(name: 'precio_base')
  final double basePrice;
  @JsonKey(name: 'producto_publicidad')
  final bool isAdvertised;
  @JsonKey(name: 'requiere_licencia')
  final bool isLicenceRequired;
  @JsonKey(name: 'descuento_expiracion')
  final double expirationDiscount;
  @JsonKey(name: 'meses_descuento')
  final num monthsDiscounted;
  @JsonKey(name: 'meses_invalidez')
  final num invalidityPeriod;
  @JsonKey(name: 'eliminado')
  final bool isDeleted;
  @JsonKey(name: 'minimo')
  final double minimumValue;
  @JsonKey(name: 'tipo')
  final String productType;
  @JsonKey(name: 'favorito')
  final bool? favorite;

  ProductModel(this.favorite, this.idAlmacen,
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.isForSale,
      required this.saleDate,
      required this.isVisible,
      required this.expirationDate,
      required this.validityPeriod,
      required this.basePrice,
      required this.isAdvertised,
      required this.isLicenceRequired,
      required this.expirationDiscount,
      required this.monthsDiscounted,
      required this.invalidityPeriod,
      required this.isDeleted,
      required this.minimumValue,
      required this.productType});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
