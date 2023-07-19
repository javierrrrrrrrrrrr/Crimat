import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../historial/presentation/view/widget/details_card.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 1.2,
              child: Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: true,
                onChanged: (value) {},
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
            ),
            Stack(
              children: [
                DetailsCard(
                  image: "/crimat/dev/media/productos/revlon_tinte.jpg",
                  isshoppingCart: true,
                  height: 120.h,
                  width: 320.w,
                  name: "Lorem ipsumr dolor",
                  price: 14,
                  quantity: 16,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
