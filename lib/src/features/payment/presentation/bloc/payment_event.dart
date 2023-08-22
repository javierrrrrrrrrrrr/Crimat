part of 'payment_bloc.dart';

@freezed
abstract class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.load() = _LoadEvent;
  const factory PaymentEvent.startedPhase0() = _StartedPhase0Event;
  const factory PaymentEvent.startedPhase1({required RequestModel datos}) =
      _StartedPhase1Event;
  const factory PaymentEvent.startedPhase2({required BuildContext context}) =
      _StartedPhase2Event;
  const factory PaymentEvent.erroroccurred() = _ErroroccurredEvent;
  const factory PaymentEvent.completed() = _CompletedEvent;
  const factory PaymentEvent.signOut() = _SignOut;
}
