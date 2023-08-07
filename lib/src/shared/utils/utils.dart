import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/shared/utils/widget/warning_custom_mesaege.dart';
import 'package:crimat_app/src/shared/utils/widget/warning_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../models/home/products/producto_model.dart';
import '../widgets/cusotm_buttom_product.dart';

class UtilFunctions {
  static void printToast(
      {required String message, Color? color, bool? shorttime}) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: color ?? GStyles.primaryColor,
        fontSize: 18.sp,
        toastLength:
            shorttime == true ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG);
  }

  static Future<dynamic> alertCustomNotification(
      BuildContext context, ProductModel product) {
    final shpoingbloc = context.read<CartBloc>();
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        actions: <Widget>[
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Image.asset("assets/images/warning.png"),
                  SizedBox(
                    height: 30.h,
                  ),
                  const WarningText(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const CustomAdvertinceWidget(),
                  SizedBox(
                    height: 30.h,
                  ),
                  CusotmButtom(
                    onPressed: () {
                      shpoingbloc.add(CartEvent.addProductinDiferentAlmacen(
                          product: product));
                      Navigator.of(context).pop();
                    },
                    height: 45.h,
                    ispraimary: true,
                    name: "Aceptar",
                    width: 250.w,
                    fontsize: 16.sp,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CusotmButtom(
                    onPressed: () => Navigator.of(context).pop(),
                    height: 45.h,
                    ispraimary: false,
                    name: "Cancelar",
                    width: 250.w,
                    fontsize: 16.sp,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                ],
              ),
              Positioned(
                right: 0,
                child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const CustomCloseDialog()),
              )
            ],
          ),
        ],
      ),
    );
  }

  static Future<dynamic> showConfimationAlmacen(
    BuildContext context,
  ) {
    final cartbloc = context.read<CartBloc>();
    String selectedOption = '';
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(actions: <Widget>[
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: cartbloc.selectedProduct.almacenList!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              RadioListTile(
                                title: const Text('Option 1'),
                                value: 'Option 1',
                                groupValue: null,
                                onChanged: (value) {
                                  selectedOption = value as String;
                                },
                              ),
                              Text(cartbloc
                                  .selectedProduct.almacenList![index].name)
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ]));
  }
}
