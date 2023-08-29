import 'package:json_annotation/json_annotation.dart';

import '../../profile/direccion_model.dart';
part 'almacen_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AlmacenModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'nombre')
  final String name;
  @JsonKey(name: 'telefono')
  final String phone;
  @JsonKey(name: 'taxes')
  final double taxes;
  @JsonKey(name: 'eliminado')
  final bool? deleted;
  @JsonKey(name: 'photo')
  final String? imagen;
  @JsonKey(name: 'direccion')
  final DireccionModel address;
  @JsonKey(name: 'gestor')
  final String gestor;

  AlmacenModel(
    this.imagen, {
    required this.id,
    required this.name,
    required this.phone,
    required this.taxes,
    this.deleted,
    required this.address,
    required this.gestor,
  });

  factory AlmacenModel.fromJson(Map<String, dynamic> json) =>
      _$AlmacenModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlmacenModelToJson(this);
}
