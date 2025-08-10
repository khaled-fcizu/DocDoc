import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Aready have an account? ',
              style: TextStyles.font13DarkBlueMeduim,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pop();
                },
              text: 'Login',
              style: TextStyles.font13MainBlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
