import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/view/widget/custom_picture_container.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.name,
    required this.price,
    required this.quantity,
    this.height,
    this.width,
    this.isshoppingCart,
    required this.image,
  });

  final String name;
  final double price;
  final double quantity;
  final double? height;
  final double? width;
  final bool? isshoppingCart;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height ?? 120.h,
          width: width ?? 300.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.sp),
            border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              FittedBox(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 100.h,
                  width: 100.w,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.r),
                      child: PictureContainer(
                          isanotherurl: "https://whiletruecu.com/$image"),
                    ),
                  ),
                ),
              ),
              ProductDetails(
                isshoppingCart: isshoppingCart,
                name: name,
                quantity: quantity,
              ),
              isshoppingCart == true
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "\$$price",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                    )
            ],
          ),
        ),
        isshoppingCart == true
            ? Positioned(
                bottom: 1.h,
                right: 3.w,
                child: const ShopingControllerWidget(),
              )
            : Container()
      ],
    );
  }
}

class ShopingControllerWidget extends StatelessWidget {
  const ShopingControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CusotmButtomCart(icon: Icons.remove),
        Text("2"),
        CusotmButtomCart(icon: Icons.add),
        CusotmButtomCart(icon: Icons.delete_outline),
      ],
    );
  }
}

class CusotmButtomCart extends StatelessWidget {
  const CusotmButtomCart({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.2)),
        ),
        child: Icon(
          icon,
          size: 18.sp,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.name,
    required this.quantity,
    this.isshoppingCart,
  });

  final String name;
  final double quantity;
  final bool? isshoppingCart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 125.w,
            height: 20.h,
            child: Text(
              name,
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
          isshoppingCart == true
              ? SizedBox(
                  height: 0.h,
                )
              : SizedBox(
                  height: 10.h,
                ),
          SizedBox(
              width: 125.w,
              height: 20.h,
              child: isshoppingCart == true
                  ? Text(
                      "\$16",
                      style: TextStyle(fontSize: 14.sp),
                    )
                  : RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Cantidad ',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 11.sp),
                          ),
                          TextSpan(
                            text: quantity.toString(),
                            style:
                                TextStyle(color: Colors.black, fontSize: 11.sp),
                          ),
                        ],
                      ),
                    )),
        ],
      ),
    );
  }
}
