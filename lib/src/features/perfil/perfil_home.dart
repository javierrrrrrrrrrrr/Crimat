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
import '../../shared/app_info.dart';
import '../../shared/dependency_injection/dependency_injection.dart';
import '../../shared/utils/const.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../auth/cubit/login_cubit.dart';
import '../auth/screens/login_screen.dart';
import '../favorites/presentation/bloc/favorite_bloc.dart';
import '../layout/layout_cubit.dart';

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
              noLogedUser: () => const Center(
                child: Text("Definir que poner aqui"),
              ),
              changeCheckSuccess: (id, profile) => ProfileMainWidget(
                profil: profile,
              ),
              updateDeliveryTypeSeleccion: (data) => Container(),
            ));
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
                            subtitle:
                                " ${profil.direcciones.length} direcciones"),
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
    ProfileBloc profileBloc = context.read<ProfileBloc>();
    FavoriteBloc favoriteBloc = context.read<FavoriteBloc>();
    LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
    LayoutCubit layoutcubit = BlocProvider.of<LayoutCubit>(context);
    AppUtilInfo appInfo = sl<AppUtilInfo>();

    ///////
    appInfo.accessToken = null;
    appInfo.refreshToken = null;
    favoriteBloc.add(const FavoriteEvent.signOut());
    profileBloc.add(const ProfileEvent.signOut());
    layoutcubit.changeScreen(0);

    cubit.loginForm.control('email').updateValue('');
    cubit.loginForm.control('password').updateValue('');
    context.pushReplacementNamed(LoginScreen.name);
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('email');
    prefs.remove('password');
  }
}
