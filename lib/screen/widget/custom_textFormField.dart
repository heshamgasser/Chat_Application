import 'package:flutter/material.dart';

import '../../style/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  Widget suffixIcon;

  // bool text;
  bool email;
  bool password;
  TextEditingController controller;

  CustomTextFormField(
      {required this.labelText,
      required this.suffixIcon,
      // required this.text,
      required this.email,
      required this.password,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      obscureText: password,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field Required';
        }

        if (email) {
          final bool emailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value);
          if (!emailValid) {
            return 'Email not Valid';
          }
        }

        if (password) {
          final bool passwordVaild = RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
              .hasMatch(value);
          if (!passwordVaild) {
            return 'Password not Valid';
          }
        }
        return null;
      },
      style: Theme.of(context).textTheme.labelLarge,
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey),
          ),
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.displaySmall),
    );
  }
}
