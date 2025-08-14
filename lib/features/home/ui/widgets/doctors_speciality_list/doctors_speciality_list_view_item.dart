import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  const DoctorsSpecialityListViewItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: Image.asset(
              'assets/images/speciality_test.png',
              width: 24,
              height: 24,
            ),
          ),
          verticalSpace(12),
          Text('General', style: TextStyles.font12DarkBlueRegular),
        ],
      ),
    );
  }
}
