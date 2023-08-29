import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoRow extends StatelessWidget {
  const CustomInfoRow({
    super.key,
    required this.imagen,
    required this.texto,
    this.isPhonenumber,
  });

  final String imagen;
  final String texto;
  final bool? isPhonenumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagen),
        SizedBox(
          width: 20.w,
        ),
        isPhonenumber == true
            ? Text(texto)
            : SizedBox(height: 50.h, width: 250.w, child: Text(texto)),
      ],
    );
  }
}
