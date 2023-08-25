import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoRow extends StatelessWidget {
  const CustomInfoRow({
    super.key,
    required this.imagen,
    required this.texto,
  });

  final String imagen;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagen),
        SizedBox(
          width: 20.w,
        ),
        Text(texto),
      ],
    );
  }
}
