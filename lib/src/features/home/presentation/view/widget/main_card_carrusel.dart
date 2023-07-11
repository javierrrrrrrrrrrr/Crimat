import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/producto_model.dart';
import '../../../../../shared/widgets/cusotm_buttom_product.dart';

class MainCardCarrusel extends StatelessWidget {
  const MainCardCarrusel({
    super.key,
    required this.producto,
  });

  final ProductModel producto;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Cambiar la dirección de la sombra
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PictureContainer(pictureUrl: producto.image),
              Padding(
                padding: EdgeInsets.only(left: 14.0.w, top: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      producto.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 16.sp, color: Colors.black),
                    ),
                    Text("\$${producto.basePrice}",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 17.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                  child: CusotmButtom(
                ispraimary: true,
                name: "Añadir al carrito",
                height: 35.h,
                width: 160.w,
              ))
            ],
          ),
          Positioned(
            right: 10.w,
            top: 10.h,
            child: const FavoriteCircle(),
          )
        ],
      ),
    );
  }
}

class PictureContainer extends StatelessWidget {
  const PictureContainer({
    super.key,
    required this.pictureUrl,
  });

  final String pictureUrl;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/no_image.png',
      placeholderFit: BoxFit.fill,
      image: 'https://crimatus.com/$pictureUrl',
      fit: BoxFit.fill,
      height: 140.sp,
      width: double.infinity,
      imageErrorBuilder: (_, __, ___) {
        return Container(
          height: 140.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.sp),
              topRight: Radius.circular(8.sp),
            ),
            color: Colors.grey[200],
          ),
          child: const Center(
            child: Icon(Icons.error),
          ),
        );
      },
    );
    // return Container(
    //   height: 140.sp,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(8.sp), topRight: Radius.circular(8.sp)),
    //       color: Colors.grey[200],
    //       image: DecorationImage(
    //         image:FadeInImage.assetNetwork(image:"" ,placeholder: ,)
    //         // image: NetworkImage('https://crimatus.com/$pictureUrl',),
    //         // fit: BoxFit.fill,

    //       )),
    // );
  }
}

class FavoriteCircle extends StatelessWidget {
  const FavoriteCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.sp,
      height: 35.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 20,
        ),
      ),
    );
  }
}
