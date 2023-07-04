import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loadingContainer.dart';

class LoadingCardCarusel extends StatelessWidget {
  const LoadingCardCarusel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color((0xFFD63E30)).withOpacity(0.5),
      child: Stack(
        children: [
          Positioned(
            top: 60.sp,
            left: 65.sp,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          Positioned(
            top: 150.sp,
            left: 13.sp,
            child: LoadingContainer(
              height: 12.sp,
              width: 109.sp,
            ),
          ),
          Positioned(
            top: 170.sp,
            left: 13.sp,
            child: LoadingContainer(
              height: 15.sp,
              width: 18.sp,
            ),
          ),
          Positioned(
            top: 190.sp,
            left: 13.sp,
            child: LoadingContainer(
              height: 34.sp,
              width: 153.sp,
            ),
          ),
        ],
      ),
    );
  }
}
