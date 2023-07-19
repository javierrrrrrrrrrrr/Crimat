part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = CartInitial;
  const factory CartState.loading() = CartLoadingState;
  const factory CartState.loaded(
      {required List<ProductModel> productCartList}) = CartLoadedState;
  const factory CartState.error({required String message}) = CartErrorState;

  const CartState._();

  List<Object?> get props => [];
}
