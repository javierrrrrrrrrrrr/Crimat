import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/repositories/almacen_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../services/almacen_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! External
  final client = http.Client();
  sl.registerLazySingleton<http.Client>(
    () => client,
  );
  final preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => preferences);

  //?? DataSources.
  sl.registerLazySingleton(() => AlmacenDataSurce(sl.get<http.Client>()));

  //?? Repositories
  sl.registerLazySingleton(() => AlmacenRepository(sl.get<AlmacenDataSurce>()));

  //?? Blocs
  sl.registerFactory(() => AlmacenBloc(sl.get<AlmacenRepository>()));
  
}
