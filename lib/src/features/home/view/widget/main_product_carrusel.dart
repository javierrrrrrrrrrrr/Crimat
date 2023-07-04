import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cusotm_buttom_product.dart';

class MainProdcutCarrusel extends StatelessWidget {
  const MainProdcutCarrusel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: GridView.builder(
        itemCount: 10, // Número de elementos a mostrar
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.sp,
          crossAxisSpacing: 20.sp,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (BuildContext context, int index) {
          // Construir cada celda de la cuadrícula
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset:
                      const Offset(0, 3), // Cambiar la dirección de la sombra
                ),
              ],
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PictureContainer(),
                    Padding(
                      padding: EdgeInsets.only(left: 14.0.sp, top: 15.sp),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem ipsumr dolor"),
                          Text("\$16"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Center(
                        child: CusotmButtomForProducts(
                      name: "Añadir al carrito",
                      height: 35.sp,
                      width: 160.sp,
                    ))
                  ],
                ),
                Positioned(
                  right: 10.sp,
                  top: 10.sp,
                  child: const FavoriteCircle(),
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}

class PictureContainer extends StatelessWidget {
  const PictureContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.sp), topRight: Radius.circular(8.sp)),
          color: Colors.grey[200],
          image: const DecorationImage(
            image: NetworkImage('https://picsum.photos/300/300/?image'),
            fit: BoxFit.cover,
          )),
    );
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
