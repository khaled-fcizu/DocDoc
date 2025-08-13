import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_condations_text.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_cubit.dart';
import 'package:docdoc/features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:docdoc/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:docdoc/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Text('Create Account', style: TextStyles.font24MainBlueBold),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font15GrayRegular,
                ),
                verticalSpace(16),
                SignUpForm(),
                verticalSpace(2 * 16),

                AppButton(
                  onPressed: () {
                    if (context
                        .read<SignUpCubit>()
                        .signUpKey
                        .currentState!
                        .validate()) {
                      context.read<SignUpCubit>().fetchSignUpStates();
                    }
                  },
                  buttonText: 'Create Account',
                ),
                verticalSpace(28),
                TermsAndCondationsText(),
                verticalSpace(18),
                AlreadyHaveAccountText(),
                SignUpBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
