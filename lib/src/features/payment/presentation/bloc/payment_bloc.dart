import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../errors/failure.dart';
import '../../../../models/payment/payment_with_token/payment_model.dart';
import '../../../../models/payment/payment_with_token/request_data_model.dart';
import '../../../../models/payment/payment_with_token/shipping_model.dart';
import '../../../../models/payment/payment_without_token/without_token_request_model.dart';
import '../../../../repositories/payment_repository.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentRepository paymentdata;

  PaymentModel? paymentdatos;

  List<ShippingModel>? _shippingMethods;
  List<ShippingModel>? get shippingMethods => _shippingMethods;

  PaymentBloc(this.paymentdata) : super(const PaymentState.initial()) {
    on<PaymentEvent>(eventHandler);
  }

  Future<void> eventHandler(
    PaymentEvent event,
    Emitter emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    await event.when(
        startedPhase0: () async {
          emit(const PaymentState.phase0InProgress());
          dynamic result = await paymentdata.getShippingMethods(token: token!);
          result.fold((failure) {
            if (failure is ServerFailure) {
              emit(const PaymentState.error(
                  message: "Error al cargar los datos"));
            }
          }, (paymentdata) {
            _shippingMethods = paymentdata;
            emit(PaymentState.phase0Complated(paymentdata: paymentdata));
          });
        },
        startedPhase1: (datos) async {
          emit(const PaymentState.phase1InProgress());

          if (token != "") {
            dynamic result = await paymentdata.getPaymentData(
              token: token!,
              datos: datos,
            );

            result.fold((failure) {
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
          try {
            await paymentdata.initPaymentSheet(
                context: context,
                customerId: paymentdatos!.customer,
                customerEphemeralKeySecret: paymentdatos!.ephemeralKey,
                paymentIntentClientSecret: paymentdatos!.paymentIntent);

            await Stripe.instance.presentPaymentSheet();

            emit(const PaymentState.completed());
          } catch (error) {
            emit(const PaymentState.error(
                message:
                    "Estamos presentando problemas para procesar su solicitud"));
          }
        },
        erroroccurred: () {},
        completed: () {},
        load: () {},
        signOut: () {
          resteVariables();
          emit(const PaymentState.initial());
        },
        //sin token
        startedPhase0WithoutToken: () async {
          emit(const PaymentState.phase0InProgressWithoutToken());
          dynamic result = await paymentdata.getShippingMethods();
          result.fold((failure) {
            if (failure is ServerFailure) {
              emit(const PaymentState.error(
                  message: "Error al cargar los datos"));
            }
          }, (paymentdata) {
            _shippingMethods = paymentdata;
            emit(PaymentState.phase0WithoutTokenComplated(
                paymentdata: paymentdata));
          });
        },
        startedPhase1WithoutToken: () {
          emit(const PaymentState.phase1InProgressWithoutToken());
        },
        startedPhase2WithoutToken: (data) async {
          emit(const PaymentState.phase2InProgressWithoutToken());

          dynamic result = await paymentdata.getPaymentDataNoUser(
            datos: data,
          );

          result.fold((failure) {
            if (failure is ServerFailure) {
              emit(const PaymentState.error(
                  message:
                      "Estamos presentando problemas para procesar su solicitud"));
            }
          }, (PaymentModel paymentdata) {
            paymentdatos = paymentdata;
            emit(PaymentState.phase2WithoutTokenComplated(datos: paymentdata));
          });
        });
  }

  void resteVariables() {
    paymentdatos = null;
    _shippingMethods = null;
  }

  FormGroup unregisterUser = FormGroup(
    {
      'nombre': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'apellidos': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'email': FormControl<String>(
        validators: [Validators.required, Validators.email],
      ),
      'telefono': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'direccion': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'apartado': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'ciudad': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'estado': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'codigo_postal': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
}
