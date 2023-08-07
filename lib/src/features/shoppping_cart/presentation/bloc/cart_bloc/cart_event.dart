part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.addedProduct({
    required ProductModel product,
  }) = _AddedProductToCartEvent;
  const factory CartEvent.removedProduct({required ProductModel product}) =
      _RemovedProductToCartEvent;
  const factory CartEvent.removedAllProduct({required ProductModel product}) =
      _RemovedProductAllToCartEvent;

  const factory CartEvent.addProductinDiferentAlmacen(
      {required ProductModel product}) = _AddProductinDiferentAlmacenState;
}
