import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../home/home.dart';

class CompletedWidget extends StatelessWidget {
  const CompletedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.h,
          ),
          Image.asset("assets/images/bags.png"),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Gracias!",
            style: TextStyle(fontSize: 34.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Su pedido será entregado pronto",
            style: TextStyle(fontSize: 21.sp),
          ),
          Text(
            "Gracias por elegir nuestra aplicación!",
            style: TextStyle(fontSize: 21.sp),
          ),
          SizedBox(
            height: 120.h,
          ),
          CusotmButtom(
            onPressed: () => context.pushNamed(HomeView.name),
            lettersize: 300.sp,
            fontsize: 30.sp,
            name: "Continuar comprando",
            height: 45.h,
            ispraimary: true,
            width: 330.w,
          )
        ],
      ),
    );
  }
}
