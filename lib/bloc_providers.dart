import 'package:crimat_app/src/app/app.dart';
import 'package:crimat_app/src/features/favorites/presentation/bloc/favorite_bloc.dart';
import 'package:crimat_app/src/features/historial/presentation/bloc/historial_bloc/historial_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:crimat_app/src/features/layout/layout_cubit.dart';
import 'package:crimat_app/src/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:crimat_app/src/features/perfil/presentation/bloc/profile_bloc.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/bloc/check_bloc/check_bloc.dart';
import 'package:crimat_app/src/shared/dependency_injection/dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

MultiBlocProvider blocProviders() {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => LayoutCubit()),
      BlocProvider(
          create: (_) => sl<AlmacenBloc>()..add(const AlmacenEvent.load())),
      BlocProvider(create: (_) => sl<ProductBloc>()),
      BlocProvider(
          create: (_) =>
              sl<CategoriesBloc>()..add(const CategoriesEvent.load())),
      BlocProvider(
          create: (_) => sl<HistorialBloc>()..add(const HistorialEvent.load())),
      BlocProvider(create: (_) => sl<CartBloc>()),
      BlocProvider(create: (_) => sl<CheckBloc>()),
      BlocProvider(
          create: (_) => sl<ProfileBloc>()..add(const ProfileEvent.load())),
      BlocProvider(
          create: (_) => sl<FavoriteBloc>()..add(const FavoriteEvent.load())),
      BlocProvider(
          create: (_) => sl<PaymentBloc>()..add(const PaymentEvent.load())),
    ],
    child: const MyApp(),
  );
}
