import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/features/shoppping_cart/utils/shopping_card_aux.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/home/products/producto_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState.initial()) {
    on<CartEvent>(eventHandler);
  }
  List<ProductModel> _cartListProducts = [];
  late ProductModel? _selectedProduct;

  List<ProductModel> get productList => _cartListProducts;
  ProductModel get selectedProduct => _selectedProduct!;

  FutureOr<void> eventHandler(
    CartEvent event,
    Emitter emit,
  ) async {
    await event.when(
      addedProduct: (ProductModel producto) async {
        emit(const CartState.loading());
        _selectedProduct = producto;
        if (producto.idAlmacen == 0) {
          emit(const CartState.selectIdalmacenToAdd());

          //emitir el estado
        } else {
          if (_cartListProducts.isNotEmpty) {
            if (_cartListProducts[0].idAlmacen == producto.idAlmacen) {
              _cartListProducts.add(_selectedProduct!);

              emit(const CartState.successAddedToCart());
            } else {
              emit(const CartState.confirMassage());
            }
          } else {
            _cartListProducts.add(producto);
            emit(const CartState.successAddedToCart());
          }
        }
        //compurbo si el producto que se va a adicionar pertenece al mismo almacen
        //si pertenece hago todo esto

        emit(
          CartState.loaded(
            productCartList: Cart(product: _cartListProducts),
          ),
          //si no
          //emito en estado que devuelva la mima lista sin adicionar el prodcuto  y de alguna manera llame el cartel de confimacion
        );
      },
      //seria que  hacer cuando se llama el evento de vaciar la lista
      //hcaer un evento nuevo de vaciar la lista y modificar la logica de el evenento de adicionar prodcyto
      removedProduct: (ProductModel producto) {
        emit(const CartState.loading());

        for (int i = _cartListProducts.length - 1; i >= 0; i--) {
          if (_cartListProducts[i].id == producto.id) {
            _cartListProducts.removeAt(i);
            break;
          }
        }

        emit(
          CartState.loaded(
            productCartList: Cart(product: _cartListProducts),
          ),
        );
      },
      removedAllProduct: (ProductModel product) async {
        emit(const CartState.loading());
        removeProductsByMatch(product, _cartListProducts);

        emit(
          CartState.loaded(
            productCartList: Cart(product: _cartListProducts),
          ),
        );
      },
      addProductinDiferentAlmacen: (ProductModel product) {
        emit(const CartState.loading());
        _cartListProducts.clear();
        add(CartEvent.addedProduct(product: product));
      },
      clearShoppingCart: () {
        _cartListProducts.clear();
        _selectedProduct = null;

        emit(const CartState.initial());
      },
      signOut: () {
        resetVariable();
        emit(const CartState.initial());
      },
    );
  }

  void resetVariable() {
    _cartListProducts = [];
    _selectedProduct = null;
  }
}

void removeProductsByMatch(
    ProductModel matchProduct, List<ProductModel> matchProductList) {
  matchProductList.removeWhere((product) => product.id == matchProduct.id);
}
