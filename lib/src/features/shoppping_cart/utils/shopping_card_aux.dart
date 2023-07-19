import 'package:equatable/equatable.dart';

import '../../../models/home/products/producto_model.dart';

class Cart extends Equatable {
  final List<ProductModel> product;
  double get subtotal => product.fold(0, (total, current) {
        if (current.basePrice != null) {
          return total + double.parse(current.basePrice);
        } else {
          return total + 0;
        }
      });

  const Cart({required this.product});

  Map<ProductModel, int> productQuantity(List<ProductModel> products) {
    Map<ProductModel, int> quantity = {};

    for (var product in products) {
      if (quantity.containsKey(product)) {
        if (quantity[product] != null) {
          quantity[product] = quantity[product]! + 1;
        }
      } else {
        quantity[product] = 1;
      }
    }
    return quantity;
  }

  @override
  List<Object?> get props => [
        product,
      ];
}
