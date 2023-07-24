import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../errors/failure.dart';
import '../../../../models/profile/profile_model.dart';
import '../../../../repositories/profile_repository.dart';
import '../../../../shared/app_info.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String? token = AppInfo().accessToken;
  final ProfileRepository profile;
  ProfileBloc(this.profile) : super(const ProfileState.initial()) {
    on<ProfileEvent>(eventHandler);
  }

  Future<void> eventHandler(
    ProfileEvent event,
    Emitter emit,
  ) async {
    await event.when(load: () async {
      emit(const ProfileState.loading());
      dynamic result;

      result = await profile.getProfileData(token: token!);

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(ProfileState.failure(message: failure.message));
        }
      }, (profile) {
        emit(ProfileState.success(profile: profile));
      });
    });
  }
}
