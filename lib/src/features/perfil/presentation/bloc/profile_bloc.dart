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
  final ProfileRepository profilerepo;

  ProfileModel? _profiledata;
  ProfileModel? get profiledata => _profiledata;

  int? _selectedId;
  int? get selectedId => _selectedId;
  ProfileBloc(
    this.profilerepo,
  ) : super(const ProfileState.initial()) {
    on<ProfileEvent>(eventHandler);
  }

  Future<void> eventHandler(
    ProfileEvent event,
    Emitter emit,
  ) async {
    await event.when(load: () async {
      emit(const ProfileState.loading());
      if (token != null) {
        dynamic result;

        result = await profilerepo.getProfileData(token: token!);

        result.fold((failure) {
          if (failure is ServerFailure) {
            emit(ProfileState.failure(message: failure.message));
          }
        }, (profile) async {
          _profiledata = profile;
          emit(ProfileState.success(profile: _profiledata!));
          // _selectedId = await profilerepo.readHistorial();
        });
      } else {
        emit(const ProfileState.noLogedUser());
      }
    }, readDireccion: () async {
      _selectedId = await profilerepo.readHistorial();
      emit(ProfileState.changeCheckSuccess(
          id: _selectedId!, profile: _profiledata!));
    }, saveDireccion: (int id) async {
      await profilerepo.saveSeleccion(id);
      _selectedId = id;
      emit(ProfileState.changeCheckSuccess(
          id: _selectedId!, profile: _profiledata!));
    });
  }
}
