import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/models/home/categories/categories_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../errors/failure.dart';
import '../../../../../models/home/products/producto_model.dart';
import '../../../../../repositories/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProdcutRepository repository;

  ProductBloc(this.repository) : super(const ProductState.loading()) {
    on<ProductEvent>(eventHandler);
  }

  FutureOr<void> eventHandler(ProductEvent event, Emitter emit) async {
    await event.when(
      loadProducts: (id) async {
        emit(const ProductState.loading());
        final result = await repository.getAllProduct(id);
        result.fold((failure) {
          if (failure is ServerFailure) {
            emit(ProductState.failure(message: failure.message));
          }
        }, (productos) {
          emit(ProductState.loadedSuccess(
              productos: productos, originalProductList: productos));
        });
      },
      toInitialState: () {
        emit(const ProductState.initial());
      },
      getProductsByCategories:
          (CategoriesModel category, List<ProductModel> listProduct) async {
        List<ProductModel> aux = [];
        emit(const ProductState.loading());

        // Introducir una pausa de 1 segundo
        await Future.delayed(const Duration(seconds: 1));

        for (var product in listProduct) {
          for (var tipo in category.tiposProducto) {
            if (product.productType == tipo.id) {
              aux = [...aux, product];
            }
          }
        }

        emit(ProductState.loadedSuccess(
            productos: aux, originalProductList: listProduct));
      },
      getProductsBySubCategories:
          (subCategory, List<ProductModel> listProduct) async {
        List<ProductModel> aux = [];
        emit(const ProductState.loading());

        // Introducir una pausa de 1 segundo
        await Future.delayed(const Duration(seconds: 1));

        for (var product in listProduct) {
          if (product.productType == subCategory.id) {
            aux = [...aux, product];
          }
        }

        emit(
          ProductState.loadedSuccess(
              productos: aux, originalProductList: listProduct),
        );
      },
    );
  }
}
