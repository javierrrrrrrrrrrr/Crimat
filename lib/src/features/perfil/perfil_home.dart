import 'package:crimat_app/src/features/perfil/presentation/bloc/profile_bloc.dart';
import 'package:crimat_app/src/features/perfil/presentation/view/delivery_address_view.dart';
import 'package:crimat_app/src/features/perfil/presentation/view/widget/custom_line_widget.dart';
import 'package:crimat_app/src/features/perfil/presentation/view/widget/custom_plane_widget.dart';
import 'package:crimat_app/src/features/perfil/presentation/view/widget/perfil_option_widget.dart';
import 'package:crimat_app/src/features/perfil/presentation/view/widget/personal_info_widget.dart';

import 'package:crimat_app/src/shared/widgets/cusotm_buttom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/profile/profile_model.dart';
import '../../shared/utils/const.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../auth/cubit/login_cubit.dart';
import '../auth/screens/login_screen.dart';
import '../favorites/presentation/bloc/favorite_bloc.dart';
import '../home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import '../home/presentation/bloc/categories_bloc/categories_bloc.dart';
import '../home/presentation/bloc/product_bloc/product_bloc.dart';
import '../layout/layout_cubit.dart';
import '../payment/presentation/bloc/payment_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  static const String name = 'profile_view';

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) => state.maybeWhen(
              orElse: () => ProfileMainWidget(
                profil: profilebloc.profiledata!,
              ),
              initial: () => Container(),
              loading: () => Center(
                child: SpinKitFadingCircle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              failure: (message) => Container(),
              success: (profile) => ProfileMainWidget(
                profil: profile,
              ),
              noLogedUser: () => const NoLogerUserWidget(),
              changeCheckSuccess: (id, profile) => ProfileMainWidget(
                profil: profile,
              ),
              updateDeliveryTypeSeleccion: (data) => Container(),
            ));
  }
}

class NoLogerUserWidget extends StatelessWidget {
  const NoLogerUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LayoutCubit layoutcubit = BlocProvider.of<LayoutCubit>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text("usted no está registrado en la aplicación"),
        ),
        SizedBox(
          height: 50.h,
        ),
        CusotmButtom(
            fontsize: 40,
            lettersize: 220.sp,
            onPressed: () {
              context.goNamed(LoginScreen.name);
              layoutcubit.changeScreen(0);
            },
            width: 150.w,
            height: 50.h,
            name: "Ir al login",
            ispraimary: true),
      ],
    );
  }
}

class ProfileMainWidget extends StatelessWidget {
  const ProfileMainWidget({
    super.key,
    required this.profil,
  });

  final ProfileModel profil;

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 760.h,
              child: CarruselListVerticalConfg(
                isperfil: true,
                title: "Mi Perfil",
                itemcount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      final args = profil;
                      if (index == 0) {
                        profilebloc.add(const ProfileEvent.readDireccion());
                        context.pushNamed(
                          DeliveryAddress.name,
                          extra: args,
                        );
                      }
                    },
                    child: Column(
                      children: [
                        PerfilOption(
                            title: opciones[1].value1,
                            subtitle: " ${profil.salones.length} direcciones"),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomLine(),
                      ],
                    ),
                  );
                },
              ),
            ),
            CusotmButtom(
              onPressed: () async {
                //restablecer todos los valores
                clearAllValues(context);
              },
              width: 280.w,
              height: 45.h,
              name: "Cerrar sesión",
              ispraimary: true,
            )
          ],
        ),
        Positioned(
          top: 100,
          left: 20,
          child: PersonalInfo(profile: profil),
        ),
        Positioned(
          top: 180,
          left: 20,
          child: CustomPlane(profile: profil),
        )
      ],
    );
  }

  void clearAllValues(BuildContext context) async {
    CategoriesBloc categoribloc = context.read<CategoriesBloc>();
    AlmacenBloc almacenbloc = context.read<AlmacenBloc>();
    ProductBloc productBloc = context.read<ProductBloc>();
    ProfileBloc profileBloc = context.read<ProfileBloc>();
    PaymentBloc paymentBloc = context.read<PaymentBloc>();
    FavoriteBloc favoriteBloc = context.read<FavoriteBloc>();
    LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
    LayoutCubit layoutcubit = BlocProvider.of<LayoutCubit>(context);

    //  categoribloc.add(const CategoriesEvent.selectCategory(categorySelectedIndex: -1));
    // categoribloc.add( CategoriesEvent.selectSubCategory());
    categoribloc.add(const CategoriesEvent.signOut());

    almacenbloc.add(const AlmacenEvent.signOut());
    //ajustar bien este tema

    productBloc.add(const ProductEvent.signOut());
    favoriteBloc.add(const FavoriteEvent.signOut());
    profileBloc.add(const ProfileEvent.signOut());
    paymentBloc.add(const PaymentEvent.signOut());
    layoutcubit.changeScreen(0);

    cubit.loginForm.control('email').updateValue('');
    cubit.loginForm.control('password').updateValue('');
    context.pushReplacementNamed(LoginScreen.name);
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', '');
    prefs.remove('email');
    prefs.remove('password');
  }
}
