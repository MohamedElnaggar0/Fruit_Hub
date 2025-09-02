import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_bottom.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_divider.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_login_with_google.dart';
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
          Text(
            'نسيت كلمة المرور ؟',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 14,
              color: Color(0xFF2D9F5D),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 30),
          CustomBottom(text: 'تسجيل دخول'),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' لا تملك حساب ؟',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
              Text(
                ' قم بانشاء حساب ',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2D9F5D),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          CustomDivider(),
          SizedBox(height: 30),
          CustomLoginWithGoogle(),
        ],
      ),
    );
  }
}
