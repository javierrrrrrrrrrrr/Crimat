// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      json['id'] as int,
      json['direccion'] as String,
      json['apartado'] as String,
      json['Estado'] as String,
      json['ciudad'] as String,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direccion': instance.address,
      'apartado': instance.aparted,
      'ciudad': instance.city,
      'Estado': instance.state,
    };
