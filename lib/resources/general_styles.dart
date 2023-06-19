import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GStyles{
  static Color get primaryColor => const Color.fromARGB(255, 217, 53, 39,);
  static Color get alertColor => const Color.fromARGB(255, 183, 4, 4);

  static TextStyle get normalTextStyle => TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20.sp);
  static TextStyle get bigTextStyle => TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, color: primaryColor, fontSize: 20.sp);

  static InputDecoration get formDecoration => InputDecoration(
    contentPadding: EdgeInsets.all(24.sp),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    labelStyle: TextStyle(fontSize: 24.sp, fontFamily: 'Poppins', fontWeight: FontWeight.w400, color: Colors.black38),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: GStyles.primaryColor)),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: GStyles.primaryColor)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: GStyles.primaryColor)),
  );

  // static FontStyle get
}