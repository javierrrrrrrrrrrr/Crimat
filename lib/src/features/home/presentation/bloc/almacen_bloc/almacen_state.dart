part of 'almacen_bloc.dart';

@freezed
class AlmacenState with _$AlmacenState {
  const factory AlmacenState.initial() = _Initial;
  const factory AlmacenState.loading() = _Loading;
  //estado cuando un almacen es selecionado
  const factory AlmacenState.selectedAlmacen(
      {required List<AlmacenModel> almacenes,
      required int index}) = _SelectedAlmacen;
  const factory AlmacenState.success({
    required List<AlmacenModel> almacenes,
  }) = _Success;
  const factory AlmacenState.failure({
    required String message,
  }) = _Failure;
}
