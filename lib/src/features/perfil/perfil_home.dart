import 'package:crimat_app/src/features/perfil/view/widget/custom_line_widget.dart';
import 'package:crimat_app/src/features/perfil/view/widget/custom_plane_widget.dart';
import 'package:crimat_app/src/features/perfil/view/widget/perfil_option_widget.dart';
import 'package:crimat_app/src/features/perfil/view/widget/personal_info_widget.dart';
import 'package:crimat_app/src/shared/widgets/cusotm_buttom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/utils/const.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  static const String name = 'profile_view';

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
                itemcount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
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
        const Positioned(
          top: 100,
          left: 20,
          child: PersonalInfo(),
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
