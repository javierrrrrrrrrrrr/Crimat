import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarningText extends StatelessWidget {
  const WarningText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Advertencia",
      style: TextStyle(
        fontSize: 24.sp,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
    );
  }
}
