// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StripeResponse _$StripeResponseFromJson(Map<String, dynamic> json) =>
    StripeResponse(
      json['mensaje'] as String?,
      paymentIntent: json['paymentIntent'] as String?,
      ephemeralKey: json['ephemeralKey'] as String?,
      customer: json['customer'] as String?,
      publishableKey: json['publishableKey'] as String?,
    );

Map<String, dynamic> _$StripeResponseToJson(StripeResponse instance) =>
    <String, dynamic>{
      'paymentIntent': instance.paymentIntent,
      'ephemeralKey': instance.ephemeralKey,
      'customer': instance.customer,
      'publishableKey': instance.publishableKey,
      'mensaje': instance.mensaje,
    };
