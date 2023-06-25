import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../resources/general_styles.dart';

class CustomRxTextField extends StatelessWidget {
  final String formControlName;
  final String labelText;
  const CustomRxTextField({required this.formControlName, required this.labelText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.sp),
      child: ReactiveTextField(
        validationMessages: {
          'required': (error) => context.loc.requiredMessage,
          'email': (error) => context.loc.emailMessage,
          'mustMatch': (error) => context.loc.mustMatchPass,
        },
        formControlName: formControlName,
        decoration: GStyles.formDecoration.copyWith(labelText: labelText),
      ),
    );
  }
}
