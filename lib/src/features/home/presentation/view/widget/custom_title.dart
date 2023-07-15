import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
    this.size,
  });

  final String title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: size ?? 20.sp,
          color: Theme.of(context).secondaryHeaderColor),
    );
  }
}
