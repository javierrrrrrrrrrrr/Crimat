import 'package:crimat_app/resources/general_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../models/home/products/producto_model.dart';

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
        title: const Text('Alerta'),
        content: const Text(
            'Esta intentando agregar un prodcuto al carrito desde otro almacen si continua se perderan todos los productos anadidos previamente al carrito'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              shpoingbloc
                  .add(CartEvent.addProductinDiferentAlmacen(product: product));
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Cancelar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
