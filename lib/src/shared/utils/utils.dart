import 'package:crimat_app/resources/general_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UtilFunctions{
  static void printToast(String message, Color color){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: color,
      fontSize: 18.sp,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}