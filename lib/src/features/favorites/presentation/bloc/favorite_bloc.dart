import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../errors/failure.dart';
import '../../../../models/home/products/producto_model.dart';
import '../../../../repositories/favorite_repository.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FavoriteRepository favorite;
  List<ProductModel> favoriteProductList = [];
  ProductModel? selectedFavoriteProduct;

  FavoriteBloc(this.favorite) : super(const FavoriteState.initial()) {
    on<FavoriteEvent>(eventHandler);
  }

  Future<void> eventHandler(
    FavoriteEvent event,
    Emitter emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    await event.when(
      load: () async {
        dynamic result;
        emit(const FavoriteState.loading());
        if (token != '') {
          result = await favorite.getFavorite(token: token!);
          result.fold((failure) {
            if (failure is ServerFailure) {
              emit(FavoriteState.error(message: failure.message));
            }
          }, (favoritelist) {
            favoriteProductList = favoritelist;

            emit(FavoriteState.loaded(productModelList: favoriteProductList));
          });
        } else {
          emit(const FavoriteState.noLogedUserState());
        }
      },
      addedProduct: (ProductModel product) {
        if (token != null) {
          favorite.addFavorite(token: token, productid: product.id);
        }
      },
      removedProduct: (ProductModel product) {
        if (token != null) {
          favorite.removeFavorite(token: token, productid: product.id);
        }
      },
      updateFavoriteList: (ProductModel product) {
        emit(const FavoriteState.loading());
        favoriteProductList.remove(product);
        emit(FavoriteState.loaded(productModelList: favoriteProductList));
      },
      updateSelectedFavoriteProdcut: (ProductModel product) {
        selectedFavoriteProduct = product;
      },
      updateAlmacenIdInProductFavorite:
          (int idAlmacenForUpdate, int productid) {
        emit(const FavoriteState.loading());
        ProductModel aux = favoriteProductList
            .firstWhere((element) => element.id == productid);
        aux.idAlmacen = idAlmacenForUpdate;

        emit(FavoriteState.loaded(productModelList: favoriteProductList));
      },
      signOut: () {
        resetVariable();
        emit(const FavoriteState.initial());
      },
    );
  }

  void resetVariable() {
    favoriteProductList = [];
    selectedFavoriteProduct = null;
  }
}
