import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/home/products/producto_model.dart';
import '../services/home/product_data_source.dart';

class ProdcutRepository {
  final ProductDataSource productDataSurce;

  ProdcutRepository(this.productDataSurce);

  Future<Either<Failure, List<ProductModel>>> getAllProduct(
      {required String id, String? token}) async {
    try {
      final products = await productDataSurce.getAllProduct(id, token);

      return Right(products);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
