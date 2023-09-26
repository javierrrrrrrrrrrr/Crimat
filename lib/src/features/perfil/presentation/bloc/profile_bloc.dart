import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/models/profile/new_salon_request_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../errors/failure.dart';
import '../../../../models/profile/edit_salon_request_data_model.dart';
import '../../../../models/profile/profile_model.dart';
import '../../../../models/profile/stripe_response_model.dart';
import '../../../../models/profile/subscriptions_model.dart';
import '../../../../repositories/payment_repository.dart';
import '../../../../repositories/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  StripeResponse? stripeResponse;
  // String? token = AppUtilInfo().accessToken;
  final ProfileRepository profilerepo;
  final PaymentRepository paymentdata;

//id del plan q se compro
  int? buyPlan;

  //lista de sub
  List<SubscriptionsModel>? sublist = [];
  //int cantidad de meses de la sub

  List<int> subMonth = [];
  ProfileModel? _profiledata;
  ProfileModel? get profiledata => _profiledata;

  int? _selectedDeliveryAdressId;
  int? get selectedId => _selectedDeliveryAdressId;

  int? _selectedShippingTypeid;
  int? get selectedShippingTypeid => _selectedShippingTypeid;

  ProfileBloc(
    this.profilerepo,
    this.paymentdata,
  ) : super(const ProfileState.initial()) {
    on<ProfileEvent>(eventHandler);
  }

  Future<void> eventHandler(
    ProfileEvent event,
    Emitter emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    await event.when(load: () async {
      // _selectedId = await profilerepo.readHistorial();
      emit(const ProfileState.loading());
      if (token != '') {
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
      //agregando para marcar la primera direcion si el usario no a selecionado ninguna
      if (_selectedDeliveryAdressId == 0) {
        _selectedDeliveryAdressId = _profiledata!.salones[0].direccion.id!;
      }

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
    }, getSubscriptionsTyps: () async {
      emit(const ProfileState.loading());

      dynamic result = await profilerepo.getTypeSubscriptions(token: token);

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(ProfileState.failure(message: failure.message));
        }
      }, (List<SubscriptionsModel> data) async {
        sublist = data;
        subMonth = List<int>.filled(sublist!.length, 1);
        emit(ProfileState.getSubscriptionsType(data: sublist!));
      });
    }, buySubscriptions: (int id, selectedindex) async {
      buyPlan = id;
      emit(const ProfileState.loading());
      dynamic result = await profilerepo.buySubscriptions(
          token: token!, id: id, cantidadMeses: subMonth[selectedindex]);

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(ProfileState.failure(message: failure.message));
        }
      }, (StripeResponse data) async {
        stripeResponse = data;

        emit(const ProfileState.buySubscriptionsCompleted());
      });
    }, buySubscriptionsStripe: (BuildContext context) async {
      emit(const ProfileState.loading());
      //validacion para si la subcripcion vale cero

      await paymentdata.initPaymentSheet(
          context: context,
          paymentIntentClientSecret: stripeResponse!.paymentIntent,
          customerId: stripeResponse!.customer,
          customerEphemeralKeySecret: stripeResponse!.ephemeralKey);

      await Stripe.instance.presentPaymentSheet();
      emit(const ProfileState.buySubscriptionsStripeCompleted());
    }, updatePlaneView: () {
      SubscriptionsModel? plandata;
      for (int i = 0; i < sublist!.length; i++) {
        if (sublist![i].id == buyPlan) {
          plandata = sublist![i];
        }
      }

      if (plandata != null) {
        profiledata!.suscripcion.tipo = plandata.tipoSuscripcion;
      }
      emit(ProfileState.success(profile: _profiledata!));
    }, addMonth: (index) {
      emit(const ProfileState.loading());
      subMonth[index] = subMonth[index] + 1;
      emit(ProfileState.updatedQuantityMonth(cantidad: subMonth));
    }, subMonth: (index) {
      if (subMonth[index] > 0) {
        emit(const ProfileState.loading());
        subMonth[index] = subMonth[index] - 1;
        emit(ProfileState.updatedQuantityMonth(cantidad: subMonth));
      }
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
