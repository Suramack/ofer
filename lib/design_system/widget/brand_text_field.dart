import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../src/theme/colors.dart';
import '../label/label.dart';

class BrandTextField extends StatelessWidget {
  final String? hintText, errorString;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final bool filled;
  const BrandTextField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.errorString,
    this.validator,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.filled = false,
    this.inputFormatters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: filled,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColor.greyE4,
            width: 2,
          ),
        ),
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return errorString ?? Strings.requiredField;
            }
            return null;
          },
      onChanged: (value) {
        onChanged?.call(value);
      },
    );
  }
}
