import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/home/products/producto_model.dart';
import '../services/shopping_cart_source/shopping_cart_data_source.dart';

class ShoppingCartRepository {
  ShoppingCartDataSource shoppingCartRepository;

  ShoppingCartRepository({
    required this.shoppingCartRepository,
  });

  Future<Either<Failure, List<ProductModel>>> getShoppingCartData() async {
    final List<ProductModel> historial;
    try {
      historial = await shoppingCartRepository.getShoppingCartData();

      return Right(historial);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, void>> saveShoppingCartData(
      {required List<ProductModel> shoppingCartList}) async {
    try {
      await shoppingCartRepository.saveShoppingCartData(shoppingCartList);

      return const Right(null);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
