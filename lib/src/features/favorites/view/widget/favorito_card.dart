import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/widgets/card_sking.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../home/presentation/view/widget/image_container.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CardSking(),
        Positioned(
          left: 10.w,
          bottom: 9.h,
          top: 9.h,
          child: ImageContainer(
            height: 95.sp,
            width: 108.sp,
            url: 'assets/images/image3.jpg',
          ),
        ),
        Positioned(
          left: 140.w,
          bottom: 15.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsumr dolorn",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "\$16",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 35.h,
              ),
              CusotmButtom(
                height: 30.h,
                width: 160.w,
                name: "Comprar ahora",
                ispraimary: true,
              ),
            ],
          ),
        ),
        Positioned(
          right: 20.w,
          child: Column(
            children: [
              Icon(
                Icons.more_horiz_outlined,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
