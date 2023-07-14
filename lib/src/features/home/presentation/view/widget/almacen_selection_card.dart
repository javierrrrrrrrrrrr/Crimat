import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/models/home/almacen/almacen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import 'image_container.dart';

class AlmacenSeleccionCard extends StatelessWidget {
  const AlmacenSeleccionCard({
    super.key,
    required this.almacen,
    this.isSelected,
    this.selectedIndex,
  });

  final AlmacenModel almacen;
  final bool? isSelected;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final almacenBloc = context.read<AlmacenBloc>();
    return Container(
      height: 120.h,
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        border: isSelected == true
            ? Border.all(color: Colors.black.withOpacity(1), width: 2)
            : Border.all(color: Colors.white.withOpacity(0.1), width: 1),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
            onTap: () {
              context
                  .read<ProductBloc>()
                  .add(ProductEvent.loadProducts(id: almacen.id.toString()));

              almacenBloc.state.mapOrNull(
                  success: (value) => almacenBloc.add(
                      AlmacenEvent.activeAlmacen(
                          index: selectedIndex!,
                          almacenes: List.of(value.almacenes))),
                  selectedAlmacen: (value) => almacenBloc.add(
                      AlmacenEvent.activeAlmacen(
                          index: selectedIndex!,
                          almacenes: List.of(value.almacenes))));
            },
            key: ValueKey(almacen.id),
            child: ImageContainer(
              height: 103.sp,
              width: 123.sp,
              url: 'assets/images/no_image.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<ProductBloc>().add(
                        ProductEvent.loadProducts(id: almacen.id.toString()));
                    almacenBloc.state.mapOrNull(
                        success: (value) => almacenBloc.add(
                            AlmacenEvent.activeAlmacen(
                                index: selectedIndex!,
                                almacenes: List.of(value.almacenes))),
                        selectedAlmacen: (value) => almacenBloc.add(
                            AlmacenEvent.activeAlmacen(
                                index: selectedIndex!,
                                almacenes: List.of(value.almacenes))));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        almacen.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.edit_location_outlined,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            width: 50.w,
                            height: 20.h,
                            child: Text(
                              almacen.address.toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                CusotmButtom(
                  onPressed: () {
                    //navegar para los detalles del almacen
                  },
                  ispraimary: true,
                  name: "Ver almacen",
                  height: 34.h,
                  width: 120.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
