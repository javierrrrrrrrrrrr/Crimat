part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts({required String id}) = _LoadProducts;
  const factory ProductEvent.getProductsByCategories(
      {required CategoriesModel category,
      required List<ProductModel> listProduct}) = _GetProductsByCategories;
  const factory ProductEvent.toInitialState() = _ToInitialState;
}
