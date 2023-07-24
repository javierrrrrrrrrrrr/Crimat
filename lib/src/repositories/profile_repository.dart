import 'package:dartz/dartz.dart';

import '../errors/expetion.dart';
import '../errors/failure.dart';
import '../models/profile/profile_model.dart';
import '../services/profile_sources/profile_data_source.dart';

class ProfileRepository {
  final ProfileDataSource profileDataSurce;

  ProfileRepository(this.profileDataSurce);

  Future<Either<Failure, ProfileModel>> getProfileData(
      {required String token}) async {
    //TODO: Hacer la implementacion de si el dispositivo tiene internet.

    final ProfileModel profile;
    try {
      profile = await profileDataSurce.getProfileData(token);

      return Right(profile);
    } on ServerException {
      return Left(ServerFailure('Server failure'));
    }
  }
}
