import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../resources/app_icons.dart';

class NoSelectedAlmacenwidget extends StatelessWidget {
  const NoSelectedAlmacenwidget({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        children: [
          Image.asset(AppIcons.homeSelected, height: 50.h, fit: BoxFit.cover),
          SizedBox(
            height: 50,
            width: 160,
            child: Center(
              child: Text(
                message,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
