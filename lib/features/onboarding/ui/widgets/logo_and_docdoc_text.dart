import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndDocdocText extends StatelessWidget {
  const LogoAndDocdocText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/logo.svg', width: 45.w, height: 45.h),
        horizontalSpace(8),
        Text('Docdoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
