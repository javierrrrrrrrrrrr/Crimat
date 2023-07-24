import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'suscripcion')
  final String suscripcion;
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
  @JsonKey(name: 'telefono')
  final String telefono;
  @JsonKey(name: 'licencia')
  final String licencia;

  ProfileModel(
      this.email,
      this.firstName,
      this.lastName,
      this.suscripcion,
      this.direccion,
      this.ciudad,
      this.apartado,
      this.estado,
      this.codigoPostal,
      this.telefono,
      this.licencia);

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
