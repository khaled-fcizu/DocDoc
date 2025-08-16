import 'package:docdoc/features/home/data/models/speciality_response_model.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctorsList});
  final List<DoctorModel>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorModel: doctorsList![index]);
        },
      ),
    );
  }
}
