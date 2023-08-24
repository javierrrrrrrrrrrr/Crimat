import 'package:crimat_app/src/errors/expetion.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:crimat_app/src/models/home/almacen/almacen_model.dart';
import 'package:crimat_app/src/services/home/almacen_data_source.dart';
import 'package:dartz/dartz.dart';

class AlmacenRepository {
  final AlmacenDataSurce almacenDataSurce;

  AlmacenRepository(this.almacenDataSurce);

  Future<Either<Failure, List<AlmacenModel>>> getAllAlmacenes() async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.
    try {
      final almacenes = await almacenDataSurce.getAllAlmacen();

      return Right(almacenes);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
