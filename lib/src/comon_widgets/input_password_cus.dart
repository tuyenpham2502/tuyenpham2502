
import 'package:flutter/material.dart';

class InputPasswordCus extends StatefulWidget {
  const InputPasswordCus({super.key, this.hintText, this.labelText, this.border, this.prefixIcon});

  final String? hintText;
  final String? labelText;
  final OutlineInputBorder? border;
  final Widget? prefixIcon;

  


  @override
  State<InputPasswordCus> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InputPasswordCus> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        labelText: widget.labelText,
        border: widget.border,
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
      ),
    )
    );
  }
}