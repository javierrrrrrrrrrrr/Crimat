import 'package:equatable/equatable.dart';

import '../../../models/home/products/producto_model.dart';

class Cart extends Equatable {
  final List<ProductModel> product;
  final List<bool> check = [];

  double get subtotal => product.fold(0, (total, current) {
        // ignore: unnecessary_null_comparison
        if (current.basePrice != null) {
          return total + current.basePrice;
        } else {
          return total + 0;
        }
      });

  Cart({required this.product});

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

  List<bool> getboolList(List<ProductModel> products) {
    Map<ProductModel, int> quantity = productQuantity(products);

    List<bool> boolList = List.filled(quantity.length + 1, true);

    return boolList;
  }

  @override
  List<Object?> get props => [
        product,
      ];
}
