import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGray,
                  highlightColor: ColorsManager.lightGray,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                  ),
                ),
                verticalSpace(14),
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 12,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
