import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'almacen_selection_card.dart';
import 'loading_widget/loading_container.dart';

class AlmacenSeleccionCarusel extends StatelessWidget {
  const AlmacenSeleccionCarusel({
    super.key,
    // this.isloagind,
  });

  final bool isloagind = true;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 10.w,
            right: 10.w,
            top: 15.5.h,
            bottom: 15.5.h,
          ),
          child: isloagind == true
              ? const LoadingAlmacenSeleccionCard()
              : const AlmacenSeleccionCard(),
        );
      },
    );
  }
}

class LoadingAlmacenSeleccionCard extends StatelessWidget {
  const LoadingAlmacenSeleccionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 120.h,
            width: 280.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                border: Border.all(
                  color: Colors.white.withOpacity(0.6),
                  width: 2.0,
                ))),
        Positioned(
          top: 40.h,
          left: 50.w,
          child: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
        Positioned(
          top: 15.h,
          left: 140.w,
          child: LoadingContainer(
            color: const Color((0xED2D1C)).withOpacity(0.5),
            height: 12.h,
            width: 108.w,
          ),
        ),
        Positioned(
          top: 40.h,
          left: 130.w,
          child: LoadingContainer(
            color: const Color((0xED2D1C)).withOpacity(0.5),
            height: 15.h,
            width: 18.w,
          ),
        ),
        Positioned(
          top: 40.h,
          left: 155.w,
          child: LoadingContainer(
            color: const Color((0xED2D1C)).withOpacity(0.5),
            height: 15.h,
            width: 96.w,
          ),
        ),
        Positioned(
          top: 70.h,
          left: 130.w,
          child: LoadingContainer(
            iscircularborder: true,
            color: const Color((0x393F42)).withOpacity(0.4),
            height: 34.h,
            width: 120.w,
          ),
        ),
      ],
    );
  }
}
