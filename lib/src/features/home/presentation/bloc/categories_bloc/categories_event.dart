part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.load() = _Load;
  const factory CategoriesEvent.selectCategory({
    int? categorySelectedIndex,
  }) = _SelectCategory;
  const factory CategoriesEvent.selectSubCategory({
    required int categorySelectedIndex,
    required int subCategorySelectedIndex,
  }) = _SelectSubCategory;
  const factory CategoriesEvent.signOut() = _SignOut;
}
