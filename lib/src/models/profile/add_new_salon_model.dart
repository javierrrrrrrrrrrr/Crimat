import 'package:json_annotation/json_annotation.dart';

part 'add_new_salon_model.g.dart';

@JsonSerializable()
class SalonModel {
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'direccion')
  final String direccion;
  @JsonKey(name: 'ciudad')
  final String ciudad;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'codigo_postal')
  final String codigoPostal;

  SalonModel({
    required this.nombre,
    required this.direccion,
    required this.ciudad,
    required this.apartado,
    required this.estado,
    required this.codigoPostal,
  });

  factory SalonModel.fromJson(Map<String, dynamic> json) =>
      _$SalonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SalonModelToJson(this);
}
