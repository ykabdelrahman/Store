import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.iconn,
    this.textType,
    this.hideText = false,
    this.onChanged,
    this.controller,
    this.validate,
    this.decoration,
  });
  final String? hint;
  final IconData? iconn;
  final TextInputType? textType;
  final bool? hideText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validate,
      keyboardType: textType,
      obscureText: hideText!,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      decoration: decoration,
    );
  }
}
