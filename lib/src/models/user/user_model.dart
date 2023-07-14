import 'package:json_annotation/json_annotation.dart';

import 'address_model.dart';
part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  @JsonKey(name: 'nombre')
  final String name;

  @JsonKey(name: 'apellidos')
  final String lastName;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'telefono')
  final String phoneNumber;

  @JsonKey(name: 'licencia')
  final String license;

  @JsonKey(name: 'direccion')
  final AddressModel address;

  const UserModel(this.name, this.lastName, this.email, this.phoneNumber,
      this.license, this.address);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
