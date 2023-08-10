import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../errors/failure.dart';
import '../../../../models/payment/payment_model.dart';
import '../../../../models/payment/request_data_model.dart';
import '../../../../models/payment/shipping_model.dart';
import '../../../../repositories/payment_repository.dart';
import '../../../../shared/app_info.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  String? token = AppInfo().accessToken;
  final PaymentRepository paymentdata;
  PaymentModel? paymentdatos;

  PaymentBloc(this.paymentdata) : super(const PaymentState.initial()) {
    on<PaymentEvent>(eventHandler);
  }

  Future<void> eventHandler(
    PaymentEvent event,
    Emitter emit,
  ) async {
    await event.when(
        startedPhase0: () async {
          emit(const PaymentState.phase0InProgress());
          dynamic result = await paymentdata.getShippingMethods(token: token!);
          result.fold((failure) {
            print('Este es el error $failure');
            if (failure is ServerFailure) {
              emit(const PaymentState.error(
                  message: "Error al cargar los datos"));
            }
          }, (paymentdata) {
            emit(PaymentState.phase0Complated(paymentdata: paymentdata));
          });
        },
        startedPhase1: (datos) async {
          emit(const PaymentState.phase1InProgress());

          if (token != null) {
            dynamic result = await paymentdata.getPaymentData(
              token: token!,
              datos: datos,
            );

            result.fold((failure) {
              print('Este es el error $failure');
              if (failure is ServerFailure) {
                emit(const PaymentState.error(
                    message:
                        "Estamos presentando problemas para procesar su solicitud"));
              }
            }, (paymentdata) {
              paymentdatos = paymentdata;
              emit(PaymentState.phase1Complated(paymentdata: paymentdata!));
            });
          }
        },
        startedPhase2: (context) async {
          await paymentdata.initPaymentSheet(
              context: context,
              customerId: paymentdatos!.customer,
              customerEphemeralKeySecret: paymentdatos!.ephemeralKey,
              paymentIntentClientSecret: paymentdatos!.paymentIntent);
        },
        erroroccurred: () {},
        completed: () {},
        load: () {});
  }
}
