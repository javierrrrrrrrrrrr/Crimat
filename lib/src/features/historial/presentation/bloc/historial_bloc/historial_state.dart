part of 'historial_bloc.dart';

@freezed
class HistorialState with _$HistorialState {
  const factory HistorialState.initial() = _Initial;
  const factory HistorialState.loading() = _Loading;
  const factory HistorialState.success({
    required List<OrdenModel> historial,
  }) = _Success;
  const factory HistorialState.failure({
    required String message,
  }) = _Failure;
}
