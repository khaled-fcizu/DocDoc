import 'package:cached_network_image/cached_network_image.dart';
import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/data/models/speciality_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Anm6ZeIyyTmBroF8fp_o8QPqgmTnn5bPFw&s',
            progressIndicatorBuilder: (context, url, progress) {
              return Shimmer.fromColors(
                baseColor: ColorsManager.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorsManager.lightGray,
                    shape: BoxShape.rectangle,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) {
              return Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: ColorsManager.lightGray,
                  shape: BoxShape.rectangle,
                ),
              );
            },
          ),
          horizontalSpace(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorModel.name ?? 'Doctor Name',
                style: TextStyles.font16DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctorModel.degree ?? 'DoctorDegree'}'
                ' | '
                '${doctorModel.phone ?? '0121781717'}',
                style: TextStyles.font12GrayMeduim,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                doctorModel.email ?? 'doctor@gmail.com',
                style: TextStyles.font12GrayMeduim,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
