import 'package:json_annotation/json_annotation.dart';

part 'direccion_model.g.dart';

@JsonSerializable()
class DireccionModel {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'nombre')
  final String? nombre;
  @JsonKey(name: 'direccion')
  final String direccion;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'ciudad')
  final String ciudad;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'postal')
  final String postal;

  DireccionModel({
    this.nombre,
    this.id,
    required this.direccion,
    required this.apartado,
    required this.ciudad,
    required this.estado,
    required this.postal,
  });

  factory DireccionModel.fromJson(Map<String, dynamic> json) =>
      _$DireccionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DireccionModelToJson(this);
}
