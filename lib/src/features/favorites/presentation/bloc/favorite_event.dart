part of 'favorite_bloc.dart';

@freezed
abstract class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.load() = _Load;

  const factory FavoriteEvent.addedProduct({
    required ProductModel product,
  }) = _AddedProductToFavoriteEvent;
  const factory FavoriteEvent.removedProduct({required ProductModel product}) =
      _RemovedProductToFavoriteEvent;

  const factory FavoriteEvent.updateFavoriteList({
    required ProductModel product,
  }) = _UpdateFavoriteList;

  const factory FavoriteEvent.updateSelectedFavoriteProdcut({
    required ProductModel product,
  }) = _UpdateSelectedFavoriteProdcutEvent;

  const factory FavoriteEvent.updateAlmacenIdInProductFavorite(
      {required int idAlmacenForUpdate,
      required int productid}) = _UpdateAlmacenIdInProductFavoriteEvent;

  const factory FavoriteEvent.signOut() = _SignOut;
}
