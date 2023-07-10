import 'package:crimat_app/src/features/favorites/favorites_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/custom_botton_navbar.dart';

import '../historial/historial_view.dart';
import '../home/home.dart';
import '../perfil/perfil_home.dart';
import 'layout_cubit.dart';
import 'layout_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key, required this.childView}) : super(key: key);

  static const String name = 'layout_screen';

  final Widget childView;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
        return Scaffold(
          body: childView,
          bottomNavigationBar: const CustomBottonNavigationBar(),
        );
      }),
    );
  }
}
