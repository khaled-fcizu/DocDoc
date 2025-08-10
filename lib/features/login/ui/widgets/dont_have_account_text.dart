import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account yet? ',
              style: TextStyles.font11BlackMeduim,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(Routes.signUpScreen);
                },
              text: 'Sign Up',
              style: TextStyles.font12MainBlueRegular,
            ),
          ],
        ),
      ),
    );
  }
}
