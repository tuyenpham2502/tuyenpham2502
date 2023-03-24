
import 'package:flutter/material.dart';

class InputTextCus extends StatelessWidget {
  const InputTextCus({super.key, this.hintText, this.labelText, this.border, this.prefixIcon, this.controller});

  final String? hintText;
  final String? labelText;
  final OutlineInputBorder? border;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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