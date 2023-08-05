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
  @JsonKey(name: 'suscripcion')
  final SuscripcionModel suscripcion;
  @JsonKey(name: 'salones')
  final List<SalonModel> salones;

  ProfileModel(
      this.email,
      this.firstName,
      this.lastName,
      this.direccion,
      this.ciudad,
      this.apartado,
      this.estado,
      this.codigoPostal,
      this.telefono,
      this.licencia,
      this.suscripcion,
      this.salones);

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

  SuscripcionModel(this.tipo, this.descuento, this.diasVisibilidad,
      this.cantSalones, this.valor);

  factory SuscripcionModel.fromJson(Map<String, dynamic> json) =>
      _$SuscripcionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuscripcionModelToJson(this);
}

@JsonSerializable()
class SalonModel {
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'direccion')
  final String direccion;
  @JsonKey(name: 'apartado')
  final String apartado;
  @JsonKey(name: 'estado')
  final String estado;
  @JsonKey(name: 'codigo_postal')
  final String codigoPostal;

  SalonModel(this.nombre, this.direccion, this.apartado, this.estado,
      this.codigoPostal);

  factory SalonModel.fromJson(Map<String, dynamic> json) =>
      _$SalonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SalonModelToJson(this);
}
