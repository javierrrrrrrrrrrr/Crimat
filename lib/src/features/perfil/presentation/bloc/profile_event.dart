part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.load() = _Load;
  const factory ProfileEvent.saveDireccion({required int id}) =
      _SaveDireccionEvent;
  const factory ProfileEvent.readDireccion() = _ReadDireccionEvent;
}
