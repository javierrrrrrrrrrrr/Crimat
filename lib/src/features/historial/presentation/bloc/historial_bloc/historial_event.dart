part of 'historial_bloc.dart';

@freezed
class HistorialEvent with _$HistorialEvent {
  const factory HistorialEvent.load() = _Load;
  const factory HistorialEvent.saveInStorageHistorial(
      {required List<OrdenModel> historial}) = _SaveInStorageHistorialEvent;
}
