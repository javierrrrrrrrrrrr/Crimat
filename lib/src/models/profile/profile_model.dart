import 'package:json_annotation/json_annotation.dart';

import 'direccion_model.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'telefono')
  final String telefono;
  @JsonKey(name: 'licencia')
  final String licencia;
  @JsonKey(name: 'suscripcion')
  final SuscripcionModel suscripcion;
  @JsonKey(name: 'direcciones')
  final List<DireccionModel> direcciones;

  ProfileModel(
    this.email,
    this.firstName,
    this.lastName,
    this.telefono,
    this.licencia,
    this.suscripcion,
    this.direcciones,
  );

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}

@JsonSerializable()
class SuscripcionModel {
  @JsonKey(name: 'tipo')
  final String tipo;
  @JsonKey(name: 'descuento')
  final double descuento;
  @JsonKey(name: 'dias_visibilidad')
  final int diasVisibilidad;
  @JsonKey(name: 'cant_salones')
  final int cantSalones;
  @JsonKey(name: 'valor')
  final double valor;

  SuscripcionModel(
    this.tipo,
    this.descuento,
    this.diasVisibilidad,
    this.cantSalones,
    this.valor,
  );

  factory SuscripcionModel.fromJson(Map<String, dynamic> json) =>
      _$SuscripcionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuscripcionModelToJson(this);
}
