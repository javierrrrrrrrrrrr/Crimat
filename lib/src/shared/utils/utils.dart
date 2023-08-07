import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/shared/utils/widget/warning_custom_mesaege.dart';
import 'package:crimat_app/src/shared/utils/widget/warning_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../features/favorites/presentation/bloc/favorite_bloc.dart';
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

  static Future<dynamic> showConfimationAlmacen(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    final favoriteBloc = context.read<FavoriteBloc>();
    String selectedOption = '';

    List<bool> isCheckedList =
        List.filled(cartBloc.selectedProduct.almacenList!.length, false);

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              content: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Align(
                          alignment: Alignment.topRight,
                          child: CustomCloseDialog()),
                    ),
                    Image.asset("assets/images/warning.png"),
                    SizedBox(
                      height: 30.h,
                    ),
                    const WarningText(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Elige el almacén desde el cual deseas agregar el producto antes de continuar",
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartBloc.selectedProduct.almacenList!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Checkbox(
                            activeColor: Theme.of(context).primaryColor,
                            value: isCheckedList[index],
                            onChanged: (bool? value) {
                              setState(() {
                                // Actualizar el estado isCheckedList
                                for (int i = 0; i < isCheckedList.length; i++) {
                                  isCheckedList[i] =
                                      i == index && value == true;
                                }
                              });
                            },
                          ),
                          title: Text(
                            cartBloc.selectedProduct.almacenList![index].name,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          subtitle: Text(
                            cartBloc.selectedProduct.almacenList![index]
                                .direction.address,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    CusotmButtom(
                      onPressed: () {
                        int selectedIndex = isCheckedList.indexOf(true);
                        if (selectedIndex != -1) {
                          favoriteBloc.add(
                            FavoriteEvent.updateAlmacenIdInProductFavorite(
                              idAlmacenForUpdate: cartBloc.selectedProduct
                                  .almacenList![selectedIndex].id,
                              productid:
                                  favoriteBloc.selectedFavoriteProduct!.id,
                            ),
                          );
                          cartBloc.add(
                            CartEvent.addedProduct(
                              product: favoriteBloc.selectedFavoriteProduct!,
                            ),
                          );
                          Navigator.of(context).pop();
                        } else {
                          print('Debes seleccionar un almacén');
                          // Mostrar mensaje de error o realizar otra acción
                        }
                      },
                      height: 45.h,
                      ispraimary: true,
                      name: "Seleccionar",
                      width: 250.w,
                      fontsize: 16.sp,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
