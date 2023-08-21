import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/models/profile/new_salon_request_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../errors/failure.dart';
import '../../../../models/profile/edit_salon_request_data_model.dart';
import '../../../../models/profile/profile_model.dart';
import '../../../../repositories/profile_repository.dart';
import '../../../../shared/app_info.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String? token = AppUtilInfo().accessToken;
  final ProfileRepository profilerepo;

  ProfileModel? _profiledata;
  ProfileModel? get profiledata => _profiledata;

  int? _selectedDeliveryAdressId;
  int? get selectedId => _selectedDeliveryAdressId;

  int? _selectedShippingTypeid;
  int? get selectedShippingTypeid => _selectedShippingTypeid;

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
      // _selectedId = await profilerepo.readHistorial();
      emit(const ProfileState.loading());
      if (token != null) {
        print('Este es tokken de profile $token');
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
      _selectedDeliveryAdressId = await profilerepo.readHistorial();

      emit(ProfileState.changeCheckSuccess(
          id: _selectedDeliveryAdressId!, profile: _profiledata!));
    }, saveDireccion: (int id) async {
      await profilerepo.saveSeleccion(id);
      _selectedDeliveryAdressId = id;
      emit(ProfileState.changeCheckSuccess(
          id: _selectedDeliveryAdressId!, profile: _profiledata!));
    }, updateShippingType: (int id) {
      _selectedShippingTypeid = id;

      emit(ProfileState.updateDeliveryTypeSeleccion(
          updatedId: _selectedShippingTypeid!));
    }, goNewAddress: () {
      emit(const ProfileState.goaddAddress());
    }, addNewAddress: (requestdata) async {
      emit(const ProfileState.loading());
      dynamic result =
          await profilerepo.createdNewSalon(token: token!, datos: requestdata);

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(ProfileState.failure(message: failure.message));
        }
      }, (salondata) async {
        //  dynamic aux = convertir(salonmodel: salondata);
        _profiledata!.salones.add(salondata);

        emit(const ProfileState.addAddress());
      });
    }, goEditAddress: (SalonModel selectedsalon) {
      emit(ProfileState.goEditAddress(data: selectedsalon));
    }, editNewAddress: (EditSalonResponseModel requestdata) async {
      emit(const ProfileState.loading());

      dynamic result =
          await profilerepo.editSalon(token: token!, datos: requestdata);

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(ProfileState.failure(message: failure.message));
        }
      }, (salondata) async {
        //  dynamic aux = convertir(salonmodel: salondata);
        int indexToUpdate = _profiledata!.salones
            .indexWhere((salon) => salon.id == salondata.id);
        if (indexToUpdate != -1) {
          _profiledata!.salones[indexToUpdate] = salondata;
          emit(const ProfileState.addAddress());
        }
      });
    }, signOut: () {
      restVariable();
      emit(const ProfileState.initial());
    });
  }

  FormGroup addAddressForm = FormGroup({
    'nombre': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'direccion': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'apartado': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'ciudad': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'estado': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'codigo_postal': FormControl<String>(
      validators: [Validators.required, Validators.number],
    ),
  });

  void restVariable() {
    _selectedDeliveryAdressId = null;
    _profiledata = null;
    _selectedShippingTypeid = null;
  }
}
