import 'package:json_annotation/json_annotation.dart';

part 'new_salon_request_data_model.g.dart';

@JsonSerializable()
class DireccionModel {
  @JsonKey(name: 'direccion')
  final String direccion;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'ciudad')
  final String ciudad;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'codigo_postal')
  final String codigoPostal;

  DireccionModel({
    required this.direccion,
    required this.apartado,
    required this.ciudad,
    required this.estado,
    required this.codigoPostal,
  });

  factory DireccionModel.fromJson(Map<String, dynamic> json) =>
      _$DireccionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DireccionModelToJson(this);
}

@JsonSerializable()
class SalonRequestModel {
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'direccion')
  final DireccionModel direccion;

  SalonRequestModel({
    required this.nombre,
    required this.direccion,
  });

  factory SalonRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SalonRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SalonRequestModelToJson(this);
}
