import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/payment/payment_with_token/payment_model.dart';
import '../services/historial_sources/historial_local_data_source.dart';
import '../services/historial_sources/historial_online_data_source.dart';

class HistorialRepository {
  HistorialOnlineDataSource historialOnlineDataSurce;
  HistorialLocalDataSource historialLocalDataSurce;

  HistorialRepository({
    required this.historialOnlineDataSurce,
    required this.historialLocalDataSurce,
  });

  Future<Either<Failure, List<OrdenModel>>> getAllhistorial(
      {String? token}) async {
    final List<OrdenModel> historial;
    try {
      if (token != null && token != '') {
        historial = await historialOnlineDataSurce.getAllhistorial(token);
      } else {
        historial = await historialLocalDataSurce.getHistorial();
      }

      return Right(historial);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, void>> saveHistorial(
      {required List<OrdenModel> historial}) async {
    try {
      await historialLocalDataSurce.saveHistorial(historial);

      return const Right(null);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
