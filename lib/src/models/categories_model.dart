import 'package:json_annotation/json_annotation.dart';

part 'categories_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoriesModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'tipos_producto')
  final List<TipoProductoModel> tiposProducto;

  CategoriesModel({
    required this.id,
    required this.nombre,
    required this.tiposProducto,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriaProductoModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriaProductoModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TipoProductoModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'nombre')
  final String nombre;

  TipoProductoModel({
    required this.id,
    required this.nombre,
  });

  factory TipoProductoModel.fromJson(Map<String, dynamic> json) =>
      _$TipoProductoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TipoProductoModelToJson(this);
}
