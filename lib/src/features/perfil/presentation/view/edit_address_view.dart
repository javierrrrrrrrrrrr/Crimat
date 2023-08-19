import 'package:flutter/material.dart';

import 'add_address_view.dart';

class EditAddressView extends StatelessWidget {
  const EditAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AddAddressView(
      isEditView: true,
    );
  }
}
