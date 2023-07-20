import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../models/home/products/producto_model.dart';
import '../../../../historial/presentation/view/widget/details_card.dart';
import '../../bloc/cart_bloc/cart_bloc.dart';
import '../../bloc/check_bloc/check_bloc.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({
    super.key,
    required this.producto,
    this.carcantidad,
    required this.index,
  });

  final ProductModel producto;
  final int? carcantidad;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BlocBuilder<CheckBloc, CheckState>(
              builder: (context, state) {
                return state.when(
                    initial: () => Container(),
                    loading: () => Container(),
                    loaded: (listbool) => Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            activeColor: Theme.of(context).primaryColor,
                            value: listbool[index],
                            onChanged: (value) {
                              context.read<CheckBloc>().add(
                                  CheckEvent.updatevisibility(index: index));
                            },
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                          ),
                        ),
                    error: ((message) => const Text("Error")));
              },
            ),
            //
            Stack(
              children: [
                DetailsCard(
                  onPressedDeleteAll: () => context
                      .read<CartBloc>()
                      .add(CartEvent.removedAllProduct(product: producto)),
                  onPressedDelete: () => context
                      .read<CartBloc>()
                      .add(CartEvent.removedProduct(product: producto)),
                  onPressedAdd: () => context
                      .read<CartBloc>()
                      .add(CartEvent.addedProduct(product: producto)),
                  carcantidad: carcantidad,
                  image: producto.image,
                  isshoppingCart: true,
                  height: 120.h,
                  width: 320.w,
                  name: producto.name,
                  price: double.parse(producto.basePrice),
                  quantity: 0,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
