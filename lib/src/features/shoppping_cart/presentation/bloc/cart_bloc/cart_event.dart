part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.addedProduct({required ProductModel product}) =
      AddedProductToCartEvent;
  const factory CartEvent.removedProduct({required ProductModel product}) =
      RemovedProductToCartEvent;
  const factory CartEvent.removedAllProduct({required ProductModel product}) =
      RemovedProductAllToCartEvent;
}
