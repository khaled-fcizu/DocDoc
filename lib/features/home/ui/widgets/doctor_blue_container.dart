import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/home_blue_container.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteMeduim,
                ),
                verticalSpace(15),
                Expanded(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(48),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Find Nearby',
                      style: TextStyles.font12MainBlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 15,
            bottom: 0,
            top: 0,
            child: Image.asset('assets/images/blue_conainer_doctor.png'),
          ),
        ],
      ),
    );
  }
}
