import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponseModel{
  @JsonKey(name: 'access')
  final String accessToken;

  @JsonKey(name: 'refresh')
  final String refreshToken;

  const LoginResponseModel(this.accessToken, this.refreshToken);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}