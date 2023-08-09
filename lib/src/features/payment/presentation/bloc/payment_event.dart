part of 'payment_bloc.dart';


@freezed
abstract class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.startedPhase1() =_StartedPhase1Event();
  const factory PaymentEvent.startedPhase2() =_StartedPhase2Event();
  const factory PaymentEvent.erroroccurred() =_ErroroccurredEvent();
  const factory PaymentEvent.completed() = _CompletedEvent();

 

  
 
 
 
 
 
 

 
 
 
 
  
}

