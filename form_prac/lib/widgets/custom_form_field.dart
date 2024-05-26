import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String? Function(String?) validator;
  final Function(String?) onSaved;
  const CustomFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.validator,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: TextFormField(
        obscureText: false,
        decoration: InputDecoration(hintText: hintText),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
