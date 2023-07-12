import 'package:crimat_app/src/shared/widgets/cusotm_buttom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Map<String, dynamic> arguments =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    // print(arguments);
    return Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailsHeder(),
          ProductPictureContainer(),
          ProductDetailsColum(),
          OptionButtoms(),
        ],
      ),
    );
  }
}

class OptionButtoms extends StatelessWidget {
  const OptionButtoms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFD63E30).withOpacity(0.4),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CusotmButtom(
                height: 45,
                width: 178,
                name: "Añadir al carrito",
                ispraimary: false,
              ),
              CusotmButtom(
                height: 45,
                width: 178,
                name: "Comprar ahora",
                ispraimary: true,
              ),
            ]),
      ),
    );
  }
}

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
        const Text("Detalles del Producto"),
      ],
    );
  }
}

class ProductPictureContainer extends StatelessWidget {
  const ProductPictureContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 430.w,
      color: Colors.blue,
    );
  }
}

class ProductDetailsColum extends StatelessWidget {
  const ProductDetailsColum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          const Text(
            "Nombre del Producto",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Text(
            "\$16",
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
          SizedBox(height: 10.h),
          Text(
            "Descripción",
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
          SizedBox(
            height: 180,
            child: Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
