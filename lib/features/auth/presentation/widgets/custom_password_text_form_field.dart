import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordFeildState();
}

class _CustomPasswordFeildState extends State<CustomPasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: widget.onSaved,
      hinttext: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      obscureText: obscureText,
      suff: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? Icon(Icons.visibility_off)
            : Icon(Icons.visibility),
      ),
    );
  }
}
