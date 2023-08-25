import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_picture_container.dart';

class ProductPictureContainer extends StatelessWidget {
  const ProductPictureContainer({
    super.key,
    required this.url,
    this.notimage,
  });

  final String url;
  final bool? notimage;

  @override
  Widget build(BuildContext context) {
    return notimage == true
        ? PictureContainer(
            isanotherurl: url,
            height: 300.h,
          )
        : PictureContainer(
            pictureUrl: url,
            height: 300.h,
          );
  }
}
