import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAllText extends StatelessWidget {
  const DoctorSpecialitySeeAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Doctor Speciality', style: TextStyles.font18DarkBlueSimiBold),
        Text('See All', style: TextStyles.font12MainBlueRegular),
      ],
    );
  }
}
