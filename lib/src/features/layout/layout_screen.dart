import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:crimat_app/src/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/dependency_injection/dependency_injection.dart';
import '../../shared/widgets/custom_botton_navbar.dart';
import '../favorites/presentation/bloc/favorite_bloc.dart';
import '../historial/presentation/bloc/historial_bloc/historial_bloc.dart';
import '../perfil/presentation/bloc/profile_bloc.dart';
import '../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../shoppping_cart/presentation/bloc/check_bloc/check_bloc.dart';
import 'layout_cubit.dart';
import 'layout_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key, required this.childView}) : super(key: key);

  static const String name = 'layout_screen';

  final Widget childView;

  @override
  Widget build(BuildContext context) {
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
            create: (_) =>
                sl<HistorialBloc>()..add(const HistorialEvent.load())),
        BlocProvider(create: (_) => sl<CartBloc>()),
        BlocProvider(create: (_) => sl<CheckBloc>()),
        BlocProvider(
            create: (_) => sl<ProfileBloc>()..add(const ProfileEvent.load())),
        BlocProvider(
            create: (_) => sl<FavoriteBloc>()..add(const FavoriteEvent.load())),
        BlocProvider(
            create: (_) => sl<PaymentBloc>()..add(const PaymentEvent.load())),
      ],
      child: BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
        return Scaffold(
          body: childView,
          bottomNavigationBar: const CustomBottonNavigationBar(),
        );
      }),
    );
  }
}
