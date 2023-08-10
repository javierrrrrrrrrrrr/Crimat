import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/payment/payment_model.dart';
import '../models/payment/request_data_model.dart';
import '../models/payment/shipping_model.dart';
import '../services/payment_source/payment_data_source.dart';

class PaymentRepository {
  final PaymentDataSource paymentDataSurce;

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

//getShippingMethods
  Future<Either<Failure, List<ShippingModel>>> getShippingMethods(
      {required String token}) async {
    try {
      List<ShippingModel> data =
          await paymentDataSurce.getShippingMethods(token);

      return Right(data);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<void> initPaymentSheet(
      {required context,
      required paymentIntentClientSecret,
      required customerId,
      required customerEphemeralKeySecret}) async {
    try {
      // 1. create payment intent on the server

      // 2. initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Grocery Flutter course',
        customerId: customerId,
        customerEphemeralKeySecret: customerEphemeralKeySecret,

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
