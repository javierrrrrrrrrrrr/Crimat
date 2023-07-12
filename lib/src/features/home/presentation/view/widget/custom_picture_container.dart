import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PictureContainer extends StatelessWidget {
  const PictureContainer({
    super.key,
    required this.pictureUrl,
    this.height,
  });

  final String pictureUrl;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/no_image.png',
      placeholderFit: BoxFit.fill,
      image: 'https://whiletruecu.com/$pictureUrl',
      fit: BoxFit.fill,
      height: height ?? 140.sp,
      width: double.infinity,
      imageErrorBuilder: (_, __, ___) {
        return Container(
          height: height ?? 140.sp,
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
