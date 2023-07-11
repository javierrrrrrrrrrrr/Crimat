import 'package:json_annotation/json_annotation.dart';
part 'almacen_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AlmacenModel {
  @JsonKey(name: 'nombre')
  final String name;
  @JsonKey(name: 'telefono')
  final String phone;
  @JsonKey(name: 'taxes')
  final String taxes;
  @JsonKey(name: 'eliminado')
  final bool deleted;
  @JsonKey(name: 'direccion')
  final num address;
  @JsonKey(name: 'gestor')
  final num gestor;

  AlmacenModel({
    required this.name,
    required this.phone,
    required this.taxes,
    required this.deleted,
    required this.address,
    required this.gestor,
  });

  factory AlmacenModel.fromJson(Map<String, dynamic> json) =>
      _$AlmacenModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlmacenModelToJson(this);
}
