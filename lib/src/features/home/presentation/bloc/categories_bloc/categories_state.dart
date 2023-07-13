part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.success({
    required List<CategoriaProductoModel> categories,
  }) = _Success;
  const factory CategoriesState.failure({
    required String message,
  }) = _Failure;
}
