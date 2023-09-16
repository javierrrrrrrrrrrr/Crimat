import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/home/products/producto_model.dart';
import '../services/favorite_source/favorite_data_source.dart';

class FavoriteRepository {
  final FavoriteDataSurce favoriteDataSurce;

  FavoriteRepository(this.favoriteDataSurce);

  Future<Either<Failure, List<ProductModel>>> getFavorite(
      {required String token}) async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.

    try {
      final favoirteList = await favoriteDataSurce.getFavorite(token);

      return Right(favoirteList);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, void>> addFavorite(
      {required String token, required int productid}) async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.

    try {
      await favoriteDataSurce.addFavorite(token, productid);

      return const Right(null);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, void>> removeFavorite(
      {required String token, required int productid}) async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.

    try {
      await favoriteDataSurce.removeFavorite(token, productid);

      return const Right(null);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
