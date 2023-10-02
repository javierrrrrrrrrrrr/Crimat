import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/repositories/almacen_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../features/auth/cubit/login_cubit.dart';
import '../../features/favorites/presentation/bloc/favorite_bloc.dart';
import '../../features/historial/presentation/bloc/historial_bloc/historial_bloc.dart';
import '../../features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import '../../features/home/presentation/bloc/product_bloc/product_bloc.dart';
import '../../features/layout/layout_cubit.dart';
import '../../features/payment/presentation/bloc/payment_bloc.dart';
import '../../features/perfil/presentation/bloc/profile_bloc.dart';
import '../../features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../features/shoppping_cart/presentation/bloc/check_bloc/check_bloc.dart';
import '../../repositories/categorias_repository.dart';
import '../../repositories/favorite_repository.dart';
import '../../repositories/historial_repository.dart';
import '../../repositories/payment_repository.dart';
import '../../repositories/product_repository.dart';
import '../../repositories/profile_repository.dart';
import '../../repositories/shopping_cart_repository.dart';
import '../../repositories/token_refresh_repository.dart';
import '../../services/auth/token_refresh_data_source.dart';
import '../../services/home/almacen_data_source.dart';
import '../../services/home/categories_data_source.dart';
import '../../services/favorite_source/favorite_data_source.dart';
import '../../services/historial_sources/historial_local_data_source.dart';
import '../../services/historial_sources/historial_online_data_source.dart';
import '../../services/payment_source/payment_data_source.dart';
import '../../services/home/product_data_source.dart';
import '../../services/profile_sources/profile_data_source.dart';
import '../../services/shopping_cart_source/shopping_cart_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! External
  final client = http.Client();
  sl.registerLazySingleton<http.Client>(
    () => client,
  );
  final pref = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => pref);

  sl.registerLazySingleton(() => LayoutCubit());
  sl.registerLazySingleton(() => LoginCubit());

  ///Almacenes
  //?? DataSources.
  sl.registerLazySingleton(() => AlmacenDataSurce(
        sl.get<http.Client>(),
      ));

  //?? DataSources. de refreshtoken
  sl.registerLazySingleton(() => TokenRefreshDataSource(sl.get<http.Client>()));

  //?? Repositories de refreshtoken
  sl.registerLazySingleton(
      () => TokenRefreshRepository(sl.get<TokenRefreshDataSource>()));

  //?? Repositories
  sl.registerLazySingleton(() => AlmacenRepository(sl.get<AlmacenDataSurce>()));

  //?? Blocs
  sl.registerFactory(() =>
      AlmacenBloc(sl.get<AlmacenRepository>(), sl.get<AlmacenDataSurce>()));
  //Productos
  //?? DataSources.
  sl.registerLazySingleton(() => ProductDataSource(
      sl.get<http.Client>(), sl.get<TokenRefreshRepository>()));

  //?? Repositories
  sl.registerLazySingleton(
      () => ProdcutRepository(sl.get<ProductDataSource>()));
  //?? Blocs
  sl.registerFactory(() => ProductBloc(sl.get<ProdcutRepository>()));

  ///categorias
  //?? DataSources.
  sl.registerLazySingleton(() => CategoriesDataSurce(
      sl.get<http.Client>(), sl.get<TokenRefreshRepository>()));

  //?? Repositories
  sl.registerLazySingleton(
      () => CategoriesRepository(sl.get<CategoriesDataSurce>()));

  //?? Blocs
  sl.registerFactory(() => CategoriesBloc(sl.get<CategoriesRepository>()));

  ///Historial
  //?? DataSources.
  sl.registerLazySingleton(() => HistorialOnlineDataSource(
      sl.get<http.Client>(), sl.get<TokenRefreshRepository>()));

  sl.registerLazySingleton(
      () => HistorialLocalDataSource(sl.get<SharedPreferences>()));

  //?? Repositories
  sl.registerLazySingleton(() => HistorialRepository(
        historialOnlineDataSurce: sl.get<HistorialOnlineDataSource>(),
        historialLocalDataSurce: sl.get<HistorialLocalDataSource>(),
      ));

  //?? Blocs
  sl.registerFactory(() => HistorialBloc(sl.get<HistorialRepository>()));

  ///ShoppingCart
  //?? DataSources.
  sl.registerLazySingleton(
      () => ShoppingCartDataSource(sl.get<SharedPreferences>()));

  //?? Repositories
  sl.registerLazySingleton(() => ShoppingCartRepository(
      shoppingCartRepository: sl.get<ShoppingCartDataSource>()));

  //?? Blocs
  sl.registerFactory(() => CartBloc(sl.get<ShoppingCartRepository>()));
  sl.registerFactory(() => CheckBloc());

  ///Profile
  //?? DataSources.
  sl.registerLazySingleton(() => ProfileDataSource(sl.get<http.Client>(),
      sl.get<TokenRefreshRepository>(), sl.get<SharedPreferences>()));

  //?? Repositories
  sl.registerLazySingleton(
      () => ProfileRepository(sl.get<ProfileDataSource>()));

  //?? Blocs
  sl.registerFactory(() =>
      ProfileBloc(sl.get<ProfileRepository>(), sl.get<PaymentRepository>()));

  ///Favorite
  //?? DataSources.
  sl.registerLazySingleton(() => FavoriteDataSurce(
      sl.get<http.Client>(), sl.get<TokenRefreshRepository>()));

  //?? Repositories
  sl.registerLazySingleton(
      () => FavoriteRepository(sl.get<FavoriteDataSurce>()));

  //?? Blocs
  sl.registerFactory(() => FavoriteBloc(sl.get<FavoriteRepository>()));

  ///Payment
  //?? DataSources.
  sl.registerLazySingleton(() => PaymentDataSource(
      sl.get<http.Client>(), sl.get<TokenRefreshRepository>()));

  //?? Repositories
  sl.registerLazySingleton(
      () => PaymentRepository(sl.get<PaymentDataSource>()));

  //?? Blocs
  sl.registerFactory(() => PaymentBloc(sl.get<PaymentRepository>()));
}
