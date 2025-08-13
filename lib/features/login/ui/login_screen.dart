import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/features/login/logic/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:docdoc/features/login/ui/widgets/login_form.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_condations_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                LoginForm(),
                verticalSpace(32),
                AppButton(
                  onPressed: () {
                    if (context
                        .read<LoginCubit>()
                        .loginFormKey
                        .currentState!
                        .validate()) {
                      context.read<LoginCubit>().emitLoginStates();
                    }
                  },
                  buttonText: 'Login',
                ),
                verticalSpace(32),
                TermsAndCondationsText(),
                verticalSpace(24),
                DontHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
