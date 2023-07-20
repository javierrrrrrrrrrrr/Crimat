part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = CartInitial;
  const factory CartState.loading() = CartLoadingState;
  const factory CartState.loaded({
    required Cart productCartList,
  }) = CartLoadedState;
  const factory CartState.error({required String message}) = CartErrorState;
}
