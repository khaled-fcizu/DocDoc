import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_see_all_text.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_list/doctors_speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/doctor_blue_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsetsGeometry.fromLTRB(20, 16, 20, 20),
          child: Column(
            children: [
              HomeTopBar(),
              DoctorBlueContainer(),
              verticalSpace(24),
              DoctorSpecialitySeeAllText(),
              verticalSpace(16),
              DoctorsSpecialityListView(),
              verticalSpace(18),
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
