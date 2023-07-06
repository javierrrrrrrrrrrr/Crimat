import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    this.iscircularborder,
  });

  final double height;
  final double width;
  final Color color;
  final bool? iscircularborder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: iscircularborder == true
              ? BorderRadius.circular(5.0.r)
              : BorderRadius.circular(0.0.r)),
    );
  }
}
