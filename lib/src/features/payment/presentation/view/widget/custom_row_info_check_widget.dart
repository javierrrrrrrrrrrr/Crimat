import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusotmRowInfo extends StatelessWidget {
  const CusotmRowInfo({
    super.key,
    required this.info,
    required this.valor,
  });

  final String info;
  final String valor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(info),
          Text(valor),
        ],
      ),
    );
  }
}
