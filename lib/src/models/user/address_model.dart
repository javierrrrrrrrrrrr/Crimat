import 'package:json_annotation/json_annotation.dart';
part 'address_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AddressModel {
  final int id;

  @JsonKey(name: 'direccion')
  final String address;

  @JsonKey(name: 'apartado')
  final String aparted;

  @JsonKey(name: 'ciudad')
  final String city;

  @JsonKey(name: 'Estado')
  final String state;

  const AddressModel(
      this.id, this.address, this.aparted, this.state, this.city);

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
