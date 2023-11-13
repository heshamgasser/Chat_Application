import 'package:flutter/material.dart';

import '../../style/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  Widget suffixIcon;


  CustomTextFormField({required this.labelText,required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.labelLarge,
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey),
          ),
          suffixIcon: suffixIcon,
          labelText: labelText,
        labelStyle: Theme.of(context).textTheme.displaySmall
      ),
    );
  }
}
