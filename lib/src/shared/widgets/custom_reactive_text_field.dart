import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../resources/general_styles.dart';

class CustomRxTextField extends StatefulWidget {
  final bool hideText;
  final String formControlName;
  final String labelText;
  const CustomRxTextField({required this.formControlName, required this.labelText, this.hideText = false, Key? key}) : super(key: key);

  @override
  State<CustomRxTextField> createState() => _CustomRxTextFieldState();
}

class _CustomRxTextFieldState extends State<CustomRxTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.sp),
      child: ReactiveTextField(
        obscureText: widget.hideText ? obscureText : false,
        validationMessages: {
          'required': (error) => context.loc.requiredMessage,
          'email': (error) => context.loc.emailMessage,
          'mustMatch': (error) => context.loc.mustMatchPass,
        },
        formControlName: widget.formControlName,
        decoration: GStyles.formDecoration.copyWith(
          labelText: widget.labelText,
          suffixIcon: widget.hideText ? IconButton(
            onPressed: (){
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: obscureText ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
          ) : null
        ),
      ),
    );
  }
}
