import 'package:flutter/material.dart';

class NoProductsInShoppingCart extends StatelessWidget {
  const NoProductsInShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text("No hay nada agregado en el carrito "),
    );
  }
}
