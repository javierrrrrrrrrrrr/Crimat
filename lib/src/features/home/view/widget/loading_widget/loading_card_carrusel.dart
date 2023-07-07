import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loading_container.dart';

class LoadingCardCarusel extends StatelessWidget {
  const LoadingCardCarusel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color((0xFFD63E30)).withOpacity(0.5),
          borderRadius: BorderRadius.circular(8.0.r)),
      child: Stack(
        children: [
          Positioned(
            top: 60.h,
            left: 65.w,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          Positioned(
            top: 150.h,
            left: 13.w,
            child: LoadingContainer(
              color: const Color((0x878D8F)).withOpacity(0.5),
              height: 12.h,
              width: 109.w,
            ),
          ),
          Positioned(
            top: 170.h,
            left: 13.w,
            child: LoadingContainer(
              height: 15.h,
              width: 18.w,
              color: const Color((0x878D8F)).withOpacity(0.5),
            ),
          ),
          Positioned(
            top: 190.h,
            left: 13.w,
            child: LoadingContainer(
              iscircularborder: true,
              color: const Color((0x878D8F)).withOpacity(0.5),
              height: 34.h,
              width: 153.w,
            ),
          ),
        ],
      ),
    );
  }
}
