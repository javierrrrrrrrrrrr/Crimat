import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/dependency_injection/dependency_injection.dart';
import '../../shared/widgets/custom_botton_navbar.dart';
import '../home/presentation/bloc/historial_bloc/historial_bloc.dart';
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
