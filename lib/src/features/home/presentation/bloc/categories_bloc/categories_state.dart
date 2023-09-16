part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.success({
    required List<CategoriesModel> categories,
  }) = _Success;
  const factory CategoriesState.selectedCategory({
    required List<CategoriesModel> categories,
    List<TipoProductoModel>? subCategiries,
    required int categogyIndex,
    required int subCategogyIndex,
  }) = _SelectedCategory;
  const factory CategoriesState.failure({
    required String message,
  }) = _Failure;
}
