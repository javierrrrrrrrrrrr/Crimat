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

  List<ProductModel> get productList => _cartListProducts;

  FutureOr<void> eventHandler(
    CartEvent event,
    Emitter emit,
  ) async {
    await event.when(
      addedProduct: (ProductModel producto) async {
        emit(const CartState.loading());
        // if (_cartListProducts.isNotEmpty) {
        //   //  if(_cartListProducts[0].==producto){

        //   //  }
        // } else {}
        //compurbo si el producto que se va a adicionar pertenece al mismo almacen
        //si pertenece hago todo esto
        _cartListProducts = [..._cartListProducts, producto];
        emit(const CartState.successAddedToCart());
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
        _cartListProducts.sort((a, b) => b.id.compareTo(a.id));
        _cartListProducts.remove(producto);

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
      clearShoppingCart: () {},
    );
  }
}

void removeProductsByMatch(
    ProductModel matchProduct, List<ProductModel> matchProductList) {
  matchProductList.removeWhere((product) => product.id == matchProduct.id);
}
//   FutureOr<void> _onAddProductToCartEventToState(
//       AddedProductToCartEvent event, Emitter<CartState> emit) {
//     emit(const CartLoadingState());
//     try {
//       _cartListProducts.add(event.product);

//       emit(
//         CartLoadedState(productCartList: _cartListProducts),
//       );
//     } catch (e) {
//       emit(const CartState.error(
//           message: "Error al adicionar producto al carrito"));
//     }
//   }

//   FutureOr<void> _onRemoveProductToCartEventToState(
//       RemovedProductToCartEvent event, Emitter<CartState> emit) {
//     emit(const CartLoadingState());
//     try {
//       _cartListProducts.remove(event.product);

//       emit(CartState.loaded(productCartList: _cartListProducts));
//     } catch (e) {
//       emit(const CartState.error(
//           message: 'Error al eliminar el producto del carrito'));
//     }
//   }
// }
