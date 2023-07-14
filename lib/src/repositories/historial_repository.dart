import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/historial/historial_model.dart';
import '../services/historial_data_source.dart';

class HistorialRepository {
  final HistorialDataSource historialDataSurce;

  HistorialRepository(this.historialDataSurce);

  Future<Either<Failure, List<OrdenModel>>> getAllhistorial(
      {required String token}) async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.
    try {
      final historial = await historialDataSurce.getAllhistorial(token);

      return Right(historial);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
