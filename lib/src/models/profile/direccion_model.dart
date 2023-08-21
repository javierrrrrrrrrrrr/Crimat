import 'package:json_annotation/json_annotation.dart';

part 'direccion_model.g.dart';

@JsonSerializable()
class DireccionModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'direccion')
  final String direccion;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'ciudad')
  final String ciudad;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'postal')
  final String? postal;
  @JsonKey(name: 'codigo_postal')
  final String? codigoPostal;

  DireccionModel({
    this.codigoPostal,
    required this.id,
    required this.direccion,
    required this.apartado,
    required this.ciudad,
    required this.estado,
    this.postal,
  });

  factory DireccionModel.fromJson(Map<String, dynamic> json) =>
      _$DireccionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DireccionModelToJson(this);
}
