import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/utils/const.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarruselListVerticalConfg(
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
    );
  }
}

class CustomLine extends StatelessWidget {
  const CustomLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.black.withOpacity(0.1),
    );
  }
}

class PerfilOption extends StatelessWidget {
  const PerfilOption({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 330.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 11, color: Colors.black.withOpacity(0.5)),
              ),
            ],
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).primaryColor,
          size: 14.2,
        ),
      ],
    );
  }
}
