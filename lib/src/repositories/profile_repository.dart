import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/profile/edit_salon_request_data_model.dart';
import '../models/profile/new_salon_request_data_model.dart';
import '../models/profile/profile_model.dart';
import '../models/profile/stripe_response_model.dart';
import '../models/profile/subscriptions_model.dart';
import '../services/profile_sources/profile_data_source.dart';

class ProfileRepository {
  final ProfileDataSource profileDataSurce;

  ProfileRepository(this.profileDataSurce);

  Future<Either<Failure, ProfileModel>> getProfileData(
      {required String token}) async {
    final ProfileModel profile;
    try {
      profile = await profileDataSurce.getProfileData(token);

      return Right(profile);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<void> saveSeleccion(int id) async {
    try {
      await profileDataSurce.saveSeleccion(id);
    } catch (e) {
      // Manejar cualquier error o lanzar una excepción personalizada
    }
  }

  Future<int?> readHistorial() async {
    return await profileDataSurce.readHistorial();

    // Manejar cualquier error o lanzar una excepción personalizada
  }

  Future<Either<Failure, SalonModel>> createdNewSalon(
      {required String token, required SalonRequestModel datos}) async {
    final SalonModel data;
    try {
      data = await profileDataSurce.createSalon(token, datos);

      return Right(data);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, SalonModel>> editSalon(
      {required String token, required EditSalonResponseModel datos}) async {
    final SalonModel data;
    try {
      data = await profileDataSurce.editSalon(token, datos);

      return Right(data);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, List<SubscriptionsModel>>> getTypeSubscriptions(
      {String? token}) async {
    try {
      final typeSubscriptions =
          await profileDataSurce.getTypeSubscriptions(token);

      return Right(typeSubscriptions);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }

  Future<Either<Failure, StripeResponse>> buySubscriptions(
      {String? token, required id}) async {
    final StripeResponse repuesta;
    try {
      // final typeSubscriptions =
      repuesta = await profileDataSurce.buySubscriptions(token, id);

      return Right(repuesta);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
