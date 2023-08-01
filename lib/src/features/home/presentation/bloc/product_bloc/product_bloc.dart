import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/models/home/categories/categories_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../errors/failure.dart';
import '../../../../../models/home/products/producto_model.dart';
import '../../../../../repositories/product_repository.dart';
import '../../../../../shared/app_info.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProdcutRepository repository;
  String? token = AppInfo().accessToken;

  ProductBloc(this.repository) : super(const ProductState.loading()) {
    on<ProductEvent>(eventHandler);
  }

  FutureOr<void> eventHandler(ProductEvent event, Emitter emit) async {
    await event.when(
      loadProducts: (id) async {
        final Either<Failure, List<ProductModel>> result;
        emit(const ProductState.loading());

        result = await repository.getAllProduct(id: id, token: token);

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
            if (product.productType == tipo.id.toString()) {
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
