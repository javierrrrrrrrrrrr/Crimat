import 'package:json_annotation/json_annotation.dart';

part 'without_token_request_model.g.dart';

@JsonSerializable()
class OrderRequestModelWithoutToken {
  @JsonKey(name: 'productos')
  final List<ProductoCantidadModel> productos;
  @JsonKey(name: 'almacen')
  final int almacen;
  @JsonKey(name: 'tipo_envio')
  final int tipoEnvio;
  @JsonKey(name: 'unregister')
  final UnregisterModel unregister;

  OrderRequestModelWithoutToken({
    required this.productos,
    required this.almacen,
    required this.tipoEnvio,
    required this.unregister,
  });

  factory OrderRequestModelWithoutToken.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestModelWithoutTokenFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRequestModelWithoutTokenToJson(this);
}

@JsonSerializable()
class ProductoCantidadModel {
  @JsonKey(name: 'producto')
  final int producto;
  @JsonKey(name: 'cantidad')
  final int cantidad;

  ProductoCantidadModel({
    required this.producto,
    required this.cantidad,
  });

  factory ProductoCantidadModel.fromJson(Map<String, dynamic> json) =>
      _$ProductoCantidadModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductoCantidadModelToJson(this);
}

@JsonSerializable()
class UnregisterModel {
  @JsonKey(name: 'nombre')
  final String nombre;
  @JsonKey(name: 'apellidos')
  final String apellidos;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'telefono')
  final String telefono;
  @JsonKey(name: 'direccion')
  final DireccionModelWithoutToken direccion;

  UnregisterModel({
    required this.nombre,
    required this.apellidos,
    required this.email,
    required this.telefono,
    required this.direccion,
  });

  factory UnregisterModel.fromJson(Map<String, dynamic> json) =>
      _$UnregisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$UnregisterModelToJson(this);
}

@JsonSerializable()
class DireccionModelWithoutToken {
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

  DireccionModelWithoutToken({
    required this.direccion,
    required this.apartado,
    required this.ciudad,
    required this.estado,
    required this.codigoPostal,
  });

  factory DireccionModelWithoutToken.fromJson(Map<String, dynamic> json) =>
      _$DireccionModelWithoutTokenFromJson(json);

  Map<String, dynamic> toJson() => _$DireccionModelWithoutTokenToJson(this);
}
