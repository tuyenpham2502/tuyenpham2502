
import 'package:flutter/material.dart';

class InputTextCus extends StatelessWidget {
  const InputTextCus({super.key, this.hintText, this.labelText, this.border, this.prefixIcon});

  final String? hintText;
  final String? labelText;
  final OutlineInputBorder? border;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        labelText: labelText,
        border: border,
      )
    );
  }
}