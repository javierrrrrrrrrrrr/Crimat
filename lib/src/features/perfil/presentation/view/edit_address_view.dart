import 'package:flutter/material.dart';

import '../../../../models/profile/profile_model.dart';
import 'add_address_view.dart';

class EditAddressView extends StatelessWidget {
  const EditAddressView({Key? key, required this.selectedSalon})
      : super(key: key);

  final SalonModel selectedSalon;

  @override
  Widget build(BuildContext context) {
    return AddAddressView(
      selectedSalon: selectedSalon,
      isEditView: true,
    );
  }
}
