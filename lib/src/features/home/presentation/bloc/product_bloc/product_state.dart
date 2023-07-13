part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.loadedSuccess({
    required List<ProductModel> productos,
    required List<ProductModel> originalProductList,
  }) = _LoadedSuccess;
  const factory ProductState.failure({
    required String message,
  }) = _Failure;
}
