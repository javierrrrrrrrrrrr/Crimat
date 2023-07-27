import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../errors/failure.dart';
import '../../../../models/home/products/producto_model.dart';
import '../../../../repositories/favorite_repository.dart';
import '../../../../shared/app_info.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  String? token = AppInfo().accessToken;
  final FavoriteRepository favorite;
  FavoriteBloc(this.favorite) : super(const FavoriteState.initial()) {
    on<FavoriteEvent>(eventHandler);
  }

  Future<void> eventHandler(
    FavoriteEvent event,
    Emitter emit,
  ) async {
    await event.when(
        load: () async {
          dynamic result;
          emit(const FavoriteState.loading());
          if (token != null) {
            result = await favorite.getFavorite(token: token!);
            result.fold((failure) {
              if (failure is ServerFailure) {
                emit(FavoriteState.error(message: failure.message));
              }
            }, (favoritelist) {
              emit(FavoriteState.loaded(productModelList: favoritelist));
            });
          } else {
            emit(const FavoriteState.noLogedUserState());
          }
        },
        addedProduct: (ProductModel product) {},
        removedProduct: (ProductModel product) {});
  }
}
