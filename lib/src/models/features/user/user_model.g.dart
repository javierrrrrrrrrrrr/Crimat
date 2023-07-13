// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user/user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      json['nombre'] as String,
      json['apellidos'] as String,
      json['email'] as String,
      json['telefono'] as String,
      json['licencia'] as String,
      AddressModel.fromJson(json['direccion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'nombre': instance.name,
      'apellidos': instance.lastName,
      'email': instance.email,
      'telefono': instance.phoneNumber,
      'licencia': instance.license,
      'direccion': instance.address.toJson(),
    };
