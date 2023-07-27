import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../models/home/products/producto_model.dart';
import '../../../../../shared/widgets/card_sking.dart';
import '../../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../../home/presentation/view/widget/custom_picture_container.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.favorito,
  });

  final ProductModel favorito;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardSking(cardwidth: 450.w),
        Positioned(
          left: 10.w,
          bottom: 9.h,
          top: 9.h,
          child: SizedBox(
            height: 95.h,
            width: 108.w,
            child: PictureContainer(
              pictureUrl: favorito.image,
              height: 95.sp,
            ),
          ),
        ),
        Positioned(
          left: 130.w,
          bottom: 40.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                favorito.name,
                style: TextStyle(fontSize: 14.sp),
              ),
              Text(
                "\$${favorito.basePrice}",
                style: TextStyle(fontSize: 14.sp),
              ),
              SizedBox(
                height: 35.h,
              ),
            ],
          ),
        ),
        Positioned(
          right: 10.w,
          top: 5.h,
          child: Column(
            children: [
              Icon(
                Icons.close,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10.h,
          right: 10.w,
          child: CusotmButtom(
            lettersize: 150,
            haveicon: true,
            height: 40.h,
            width: 160.w,
            name: "Añadir al carrito",
            ispraimary: true,
          ),
        ),
      ],
    );
  }
}
