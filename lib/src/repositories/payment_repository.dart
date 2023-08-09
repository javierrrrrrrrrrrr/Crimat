import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/payment/payment_model.dart';
import '../models/payment/request_data_model.dart';
import '../services/payment_source/payment_data_source.dart';

class PaymentRepository {
  final PaymentDataSurce paymentDataSurce;

  PaymentRepository(this.paymentDataSurce);

  Future<Either<Failure, PaymentModel>> getPaymentData(
      {required String token, required RequestModel datos}) async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.

    final PaymentModel data;
    try {
      data = await paymentDataSurce.getPaymentData(token, datos);

      return Right(data);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<void> initPaymentSheet(context) async {
    try {
      // 1. create payment intent on the server

      // 2. initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: const SetupPaymentSheetParameters(
        paymentIntentClientSecret:
            "pi_3NctEkJ9WnJbugu50nu7UHde_secret_1zEJARKpYy1Pt2rzbkKNjkBIZ",
        merchantDisplayName: 'Grocery Flutter course',
        customerId: "cus_OPigY8op4TRUXN",
        customerEphemeralKeySecret:
            "ek_test_YWNjdF8xTjFCQkVKOVduSmJ1Z3U1LFlEQUxjaDQxTjZidTQ3UVg1T3M1VlJkSlh3UkRCdWI_00faNTE74v",
        // testEnv: true,
        // merchantCountryCode: 'SG',
      ));
      await Stripe.instance.presentPaymentSheet();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Payment is successful'),
        ),
      );
    } catch (errorr) {
      if (errorr is StripeException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('An error occured ${errorr.error.localizedMessage}'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('An error occured $errorr'),
          ),
        );
      }
    }
  }
}
