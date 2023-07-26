part of 'favorite_bloc.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = _LoadingState;
  const factory FavoriteState.loaded({
    required List<ProductModel> productModelList,
  }) = _LoadedState;
  const factory FavoriteState.error({required String message}) = _ErrorState;
}
