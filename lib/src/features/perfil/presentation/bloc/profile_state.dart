part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.noLogedUser() = _NoLogedUserState;
  const factory ProfileState.changeCheckSuccess(
      {required int id,
      required ProfileModel profile}) = _ChangeCheckSuccessState;
  const factory ProfileState.updateDeliveryTypeSeleccion(
      {required int updatedId}) = _UpdateDeliveryTypeSeleccionState;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.addAddress() = _AddAddressState;
  const factory ProfileState.goaddAddress() = _GoAddAddressState;
  const factory ProfileState.goEditAddress({required SalonModel data}) =
      _GoEditAddressState;
  const factory ProfileState.editAddress() = _EditAddressState;
  const factory ProfileState.success({
    required ProfileModel profile,
  }) = _Success;
  const factory ProfileState.failure({
    required String message,
  }) = _Failure;
}
