import 'package:json_annotation/json_annotation.dart';
import 'package:crimat_app/src/models/profile/direccion_model.dart';

part 'edit_salon_request_data_model.g.dart';

@JsonSerializable()
class EditSalonResponseModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'direccion')
  final DireccionModel direccion;

  EditSalonResponseModel({
    required this.id,
    required this.nombre,
    required this.direccion,
  });

  factory EditSalonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EditSalonResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditSalonResponseModelToJson(this);
}
