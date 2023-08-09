import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../errors/failure.dart';
import '../../../../models/payment/payment_model.dart';
import '../../../../models/payment/request_data_model.dart';
import '../../../../repositories/payment_repository.dart';
import '../../../../shared/app_info.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  String? token = AppInfo().accessToken;
  final PaymentRepository paymentdata;
  PaymentBloc(this.paymentdata) : super(const PaymentState.initial()) {
    on<PaymentEvent>(eventHandler);
  }

  Future<void> eventHandler(
    PaymentEvent event,
    Emitter emit,
  ) async {
    await event.when(
        startedPhase1: (datos) async {
          emit(const PaymentState.phase1InProgress());

          if (token != null) {
            dynamic result =
                await paymentdata.getPaymentData(token: token!, datos: datos);

            result.fold((failure) {
              if (failure is ServerFailure) {
                emit(PaymentState.error(message: failure.message));
              }
            }, (paymentdata) {
              emit(PaymentState.phase1Complated(paymentdata: paymentdata!));
            });
          }
        },
        startedPhase2: () {},
        erroroccurred: () {},
        completed: () {},
        load: () {});
  }
}
