import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/features/onboarding/ui/widgets/doctor_and_faded_logo_and_text.dart';
import 'package:docdoc/features/onboarding/ui/widgets/logo_and_docdoc_text.dart';
import 'package:docdoc/features/onboarding/ui/widgets/text_and_get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoAndDocdocText(),
                verticalSpace(42),
                DoctorAndFadedLogoAndText(),
                // verticalSpace(16),
                TextAndGetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
