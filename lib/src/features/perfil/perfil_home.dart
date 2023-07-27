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
import 'package:go_router/go_router.dart';

import '../../models/profile/profile_model.dart';
import '../../shared/utils/const.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  static const String name = 'profile_view';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) => state.when(
            failure: (message) => Container(),
            initial: () => Container(),
            loading: () => Container(),
            success: (profile) => ProfileMainWidget(
                  profil: profile,
                ),
            noLogedUser: () => Container(
                  child: const Center(
                    child: Text("Definir que poner aqui"),
                  ),
                )));
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
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 760.h,
              child: CarruselListVerticalConfg(
                isperfil: true,
                title: "Mi Perfil",
                itemcount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 1) {
                        context.pushNamed(DeliveryAddress.name);
                      }
                    },
                    child: Column(
                      children: [
                        PerfilOption(
                          title: opciones[index].value1,
                          subtitle: opciones[index].value2,
                        ),
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
        const Positioned(
          top: 180,
          left: 20,
          child: CustomPlane(),
        )
      ],
    );
  }
}
