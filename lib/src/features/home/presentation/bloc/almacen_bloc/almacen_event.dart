part of 'almacen_bloc.dart';

@freezed
class AlmacenEvent with _$AlmacenEvent {
  const factory AlmacenEvent.load() = _Load;
  const factory AlmacenEvent.activeAlmacen({required int index , required List<AlmacenModel> almacenes}) = _ActiveAlmacen;
}
