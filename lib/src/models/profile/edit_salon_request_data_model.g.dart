// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_salon_request_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditSalonResponseModel _$EditSalonResponseModelFromJson(
        Map<String, dynamic> json) =>
    EditSalonResponseModel(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      direccion:
          DireccionModel.fromJson(json['direccion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditSalonResponseModelToJson(
        EditSalonResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'direccion': instance.direccion,
    };
