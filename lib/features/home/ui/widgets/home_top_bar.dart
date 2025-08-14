import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Khaled!', style: TextStyles.font18DarkBlueBold),
            verticalSpace(2),
            Text('How Are you Today?', style: TextStyles.font11GrayRegular),
          ],
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset('assets/svgs/notification_ring.svg'),
        ),
      ],
    );
  }
}
