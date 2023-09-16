import 'package:json_annotation/json_annotation.dart';

part 'stripe_response_model.g.dart';

@JsonSerializable()
class StripeResponse {
  @JsonKey(name: 'paymentIntent')
  final String? paymentIntent;
  @JsonKey(name: 'ephemeralKey')
  final String? ephemeralKey;
  @JsonKey(name: 'customer')
  final String? customer;
  @JsonKey(name: 'publishableKey')
  final String? publishableKey;
  @JsonKey(name: 'mensaje')
  final String? mensaje;

  StripeResponse(this.mensaje,
      {this.paymentIntent,
      this.ephemeralKey,
      this.customer,
      this.publishableKey});

  factory StripeResponse.fromJson(Map<String, dynamic> json) =>
      _$StripeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StripeResponseToJson(this);
}
