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
        _cartListProducts = [..._cartListProducts, producto];

        emit(
          CartState.loaded(
            productCartList: Cart(product: _cartListProducts),
          ),
        );
      },
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
