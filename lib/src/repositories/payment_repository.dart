import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/payment/payment_with_token/payment_model.dart';
import '../models/payment/payment_with_token/request_data_model.dart';
import '../models/payment/payment_with_token/shipping_model.dart';
import '../models/payment/payment_without_token/without_token_request_model.dart';
import '../services/payment_source/payment_data_source.dart';

class PaymentRepository {
  final PaymentDataSource paymentDataSurce;

  PaymentRepository(this.paymentDataSurce);

  Future<Either<Failure, PaymentModel>> getPaymentData(
      {required String token, required RequestModel datos}) async {
    final PaymentModel data;
    try {
      data = await paymentDataSurce.getPaymentDatawithtoken(token, datos);

      return Right(data);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, PaymentModel>> getPaymentDataNoUser(
      {required OrderRequestModelWithoutToken datos}) async {
    final PaymentModel data;
    try {
      data = await paymentDataSurce.getPaymentDataNoUser(datos);

      return Right(data);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

//getShippingMethods
  Future<Either<Failure, List<ShippingModel>>> getShippingMethods(
      {String? token}) async {
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

    //  bloc.add(const PaymentEvent.completed());

    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text('Payment is successful'),
    //   ),
    //);

    // //   bloc.add(const PaymentEvent.erroroccurred());
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('An error occured $errorr'),
    //   ),
    //   );
  }
}
