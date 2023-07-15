import 'package:crimat_app/src/features/historial/view/widget/custom_date.dart';
import 'package:crimat_app/src/features/historial/view/widget/custom_details_colum.dart';
import 'package:crimat_app/src/features/historial/view/widget/custom_product_details_colum.dart';
import 'package:crimat_app/src/features/historial/view/widget/orden_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/widgets/card_sking.dart';
import '../../../shared/widgets/cusotm_buttom_product.dart';
import '../../home/presentation/view/widget/custom_picture_container.dart';
import '../../home/presentation/view/widget/custom_title.dart';

class HistorialDetails extends StatelessWidget {
  static const String name = 'hisorial_view_details';

  const HistorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: const CustomTitle(
              title: "Tu Historial",
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CardSking(
                    cardheight: 734.h,
                    cardwidth: 375.w,
                  ),
                ),
                Positioned(
                  top: 20.h,
                  left: 40,
                  child: const ColumDetails(
                    isvisibleamount: false,
                  ),
                ),
                Positioned(
                  top: 32.h,
                  right: 45,
                  child: const CustomDate(),
                ),
                Positioned(
                  left: 40.w,
                  top: 130.h,
                  child: const CustomCardProdcutsDetailsColum(),
                ),
                Positioned(
                  left: 40.w,
                  top: 420.h,
                  child: const OrdenDetails(),
                ),
                Positioned(
                  bottom: 35.h,
                  right: 50.w,
                  child: CusotmButtom(
                    height: 32.h,
                    width: 90.w,
                    name: "Recoger",
                    ispraimary: false,
                  ),
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
