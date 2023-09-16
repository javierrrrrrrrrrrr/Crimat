part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = _CartInitial;

  const factory CartState.loading() = _CartLoadingState;
  const factory CartState.loaded({
    required Cart productCartList,
  }) = _CartLoadedState;
  const factory CartState.error({required String message}) = _CartErrorState;
  const factory CartState.successAddedToCart() = _SuccessAddedToCart;
  const factory CartState.addWarning({
    required Cart productCartList,
  }) = _AddWarning;
  const factory CartState.confirMassage() = _ConfirMassageState;
  const factory CartState.selectIdalmacenToAdd() = _SelectIdalmacenToAdd;
}
