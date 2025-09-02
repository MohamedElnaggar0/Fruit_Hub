import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_password_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_text_form_field.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomTextFormField(
            hinttext: 'البريد الإلكتروني',
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 15),
          CustomPasswordTextFormField(onSaved: (value) {}),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
