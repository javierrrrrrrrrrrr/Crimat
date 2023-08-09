part of 'payment_bloc.dart';

@freezed
abstract class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.phase1InProgress() = _Phase1InProgressState;
  const factory PaymentState.phase2InProgress() = _Phase2InProgressState;
  const factory PaymentState.completed() = _CompletedState;
  const factory PaymentState.cancelled() = _CancelledState;
  const factory PaymentState.error({required String message}) = _ErrorState;
}
