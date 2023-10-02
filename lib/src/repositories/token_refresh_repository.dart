import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../services/auth/token_refresh_data_source.dart';

class TokenRefreshRepository {
  final TokenRefreshDataSource tokenRefreshDataSource;

  TokenRefreshRepository(this.tokenRefreshDataSource);

  Future<Either<Failure, String>> refreshAccessToken(
      {required String token}) async {
    try {
      final resptoken = await tokenRefreshDataSource.refreshToken(token);

      return Right(resptoken);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
