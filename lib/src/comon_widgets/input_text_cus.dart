
import 'package:flutter/material.dart';
import 'package:learningflutter/src/constants/validate_types.dart';

class InputTextCus extends StatelessWidget {
  const InputTextCus({super.key, this.hintText, this.labelText, this.border, this.prefixIcon, this.controller, this.validator});

  final String? hintText;
  final String? labelText;
  final OutlineInputBorder? border;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        labelText: labelText,
        border: border,
      )
    );
  }

}