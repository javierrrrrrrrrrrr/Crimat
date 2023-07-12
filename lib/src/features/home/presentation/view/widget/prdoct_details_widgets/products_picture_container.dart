import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_picture_container.dart';

class ProductPictureContainer extends StatelessWidget {
  const ProductPictureContainer({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return PictureContainer(
      pictureUrl: url,
      height: 300.h,
    );
  }
}
