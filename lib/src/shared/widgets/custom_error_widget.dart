import 'package:crimat_app/src/shared/widgets/cusotm_buttom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {Key? key, required this.message, this.onPressed, this.isproducterror})
      : super(key: key);

  final String message;
  final void Function()? onPressed;
  final bool? isproducterror;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: isproducterror == true ? 0.h : 250.h),
            Container(
              height: 144.h,
              width: 144.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/error.png")),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Error!",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 34.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              message,
              style: TextStyle(fontSize: 16.sp),
            ),
            SizedBox(height: isproducterror == true ? 50.h : 250.h),
            isproducterror == true
                ? Container()
                : CusotmButtom(
                    onPressed: onPressed,
                    width: isproducterror == true ? 150.h : 380.w,
                    height: isproducterror == true ? 56.h : 56.h,
                    name: "Reintentar",
                    ispraimary: true,
                    fontsize: 16.sp,
                  )
          ],
        ),
      ),
    );
  }
}
