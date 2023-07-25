import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsHeder extends StatelessWidget {
  const ProductDetailsHeder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back)),
        SizedBox(
          width: 80.w,
        ),
        Text(context.loc.productDetails),
      ],
    );
  }
}
