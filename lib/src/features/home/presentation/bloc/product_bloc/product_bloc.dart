import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/models/home/categories/categories_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../errors/failure.dart';
import '../../../../../models/home/products/producto_model.dart';
import '../../../../../repositories/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProdcutRepository repository;

  List<ProductModel> _productslist = [];

  ProductBloc(
    this.repository,
  ) : super(const ProductState.loading()) {
    on<ProductEvent>(eventHandler);
  }

  FutureOr<void> eventHandler(ProductEvent event, Emitter emit) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
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
          _productslist = productos;
          emit(ProductState.loadedSuccess(
              productos: _productslist,
              originalProductList: _productslist,
              token: token!));
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
            token: token!, productos: aux, originalProductList: listProduct));
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
              token: token!, productos: aux, originalProductList: listProduct),
        );
      },
      updatePrductFavorite: (bool isfavorite, int productid) {
        emit(const ProductState.loading());
        ProductModel auxproducto =
            _productslist.firstWhere((element) => element.id == productid);
        auxproducto.favorite = isfavorite;
        emit(ProductState.loadedSuccess(
            token: token!,
            productos: _productslist,
            originalProductList: _productslist));

        //auxproducto.
      },
      signOut: () {
        restVariable();
        emit(const ProductState.initial());
      },
    );
  }

  void restVariable() {
    _productslist = [];
  }
}
