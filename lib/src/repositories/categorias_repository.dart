import 'package:crimat_app/src/errors/expetion.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/home/categories/categories_model.dart';
import '../services/home/categories_data_source.dart';

class CategoriesRepository {
  final CategoriesDataSurce categoriasDataSurce;

  CategoriesRepository(this.categoriasDataSurce);

  Future<Either<Failure, List<CategoriesModel>>> getAllcategories() async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.
    try {
      final categories = await categoriasDataSurce.getAllCategories();

      return Right(categories);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
