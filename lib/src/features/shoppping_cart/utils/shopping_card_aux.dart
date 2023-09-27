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
    Map<int, int> idQuantity = {};

    for (var product in products) {
      int productId = product.id;
      if (idQuantity.containsKey(productId)) {
        idQuantity[productId] = idQuantity[productId]! + 1;
      } else {
        idQuantity[productId] = 1;
        quantity[product] = 1;
      }
    }

    for (var entry in quantity.entries) {
      int productId = entry.key.id;
      quantity[entry.key] = idQuantity[productId]!;
    }

    return quantity;
  }

  List<bool> getboolList(List<ProductModel> products) {
    Map<ProductModel, int> quantity = productQuantity(products);

    List<bool> boolList = List.filled(quantity.length + 1, true);

    return boolList;
  }

  @override
  List<Object> get props => [
        product,
      ];
}
