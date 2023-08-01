part of 'favorite_bloc.dart';

@freezed
abstract class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.load() = _Load;
  const factory FavoriteEvent.addedProduct({
    required ProductModel product,
  }) = _AddedProductToFavoriteEvent;
  const factory FavoriteEvent.removedProduct({required ProductModel product}) =
      _RemovedProductToFavoriteEvent;
}