import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hinttext,
    required this.textInputType,
    this.onSaved,
    this.obscureText = false,
    this.suff,
  });
  final String hinttext;
  final bool obscureText;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;
  final Widget? suff;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        } else {
          return null;
        }
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suff,
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: buildOutlineInputBorder(Colors.white),
        focusedBorder: buildOutlineInputBorder(Color(0xFF1B5E37)),
        enabledBorder: buildOutlineInputBorder(Colors.white),

        hintText: hinttext,
        hintStyle: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 13,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        helperStyle: TextStyle(color: Color(0xFF949D9E)),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(width: 1, color: color),
  );
}
