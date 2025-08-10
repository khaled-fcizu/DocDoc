import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndGetStartedButton extends StatelessWidget {
  const TextAndGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: TextStyles.font13GrayRegular,
          ),
          verticalSpace(30),
          AppButton(
            buttonText: 'Get Started',
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}
