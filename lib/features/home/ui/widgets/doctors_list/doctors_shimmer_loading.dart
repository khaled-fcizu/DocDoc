import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGray,

                  highlightColor: Colors.white,
                  child: Container(
                    width: 110.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGray,
                        highlightColor: Colors.white,
                        child: Container(
                          width: 180.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      verticalSpace(5),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGray,
                        highlightColor: Colors.white,
                        child: Container(
                          width: 140.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      verticalSpace(5),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGray,
                        highlightColor: Colors.white,
                        child: Container(
                          width: 140.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
