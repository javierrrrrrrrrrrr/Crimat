import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData() {
  const fontFamilyPoppins = 'Poppins';
  const fontFamilyInter = 'Inter';
  return ThemeData(
      colorScheme: const ColorScheme.light().copyWith(
        primary: const Color.fromARGB(255, 217, 53, 39),
        tertiary: const Color.fromARGB(255, 183, 4, 4),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 20.sp,
          fontFamily: fontFamilyPoppins,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: TextStyle(
          fontSize: 20.sp,
          fontFamily: fontFamilyInter,
          color: themeData().primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ));
}
