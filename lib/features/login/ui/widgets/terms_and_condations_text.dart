import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondationsText extends StatelessWidget {
  const TermsAndCondationsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13DarkBlueMeduim,
          ),
          TextSpan(text: 'and ', style: TextStyles.font13GrayRegular),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMeduim,
          ),
        ],
      ),
    );
  }
}
