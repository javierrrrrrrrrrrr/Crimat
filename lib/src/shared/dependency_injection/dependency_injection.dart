import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/repositories/almacen_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../features/home/presentation/bloc/product_bloc/product_bloc.dart';
import '../../repositories/product_repository.dart';
import '../../services/almacen_data_source.dart';
import '../../services/product_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! External
  final client = http.Client();
  sl.registerLazySingleton<http.Client>(
    () => client,
  );
  final preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => preferences);

  ///Almacenes
  //?? DataSources.
  sl.registerLazySingleton(() => AlmacenDataSurce(sl.get<http.Client>()));

  //?? Repositories
  sl.registerLazySingleton(() => AlmacenRepository(sl.get<AlmacenDataSurce>()));

  //?? Blocs
  sl.registerFactory(() => AlmacenBloc(sl.get<AlmacenRepository>()));
  //Productos
  //?? DataSources.
  sl.registerLazySingleton(() => ProductDataSource(sl.get<http.Client>()));

  //?? Repositories
  sl.registerLazySingleton(
      () => ProdcutRepository(sl.get<ProductDataSource>()));
  //?? Blocs
  sl.registerFactory(() => ProductBloc(sl.get<ProdcutRepository>()));
}
