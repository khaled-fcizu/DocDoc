import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24MainBlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font15GrayRegular,
                ),
                verticalSpace(36),
                AppTextFormField(hintText: 'Email', validator: (value) {}),
                verticalSpace(16),
                AppTextFormField(hintText: 'Password', validator: (value) {}),
                verticalSpace(16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyles.font12MainBlueRegular,
                  ),
                ),
                verticalSpace(32),
                AppButton(onPressed: () {}, buttonText: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
