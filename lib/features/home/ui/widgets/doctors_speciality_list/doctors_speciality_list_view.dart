import 'package:docdoc/features/home/data/models/speciality_response_model.dart';
import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_list/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatefulWidget {
  const DoctorsSpecialityListView({
    super.key,
    required this.specializationsList,
  });
  final List<SpecializationModel>? specializationsList;
  @override
  State<DoctorsSpecialityListView> createState() =>
      _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<DoctorsSpecialityListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: widget.specializationsList?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().emitAllDoctorsStates(
                specailizationId: widget.specializationsList?[selectedIndex].id,
              );
            },
            child: DoctorsSpecialityListViewItem(
              specializationModel: widget.specializationsList?[selectedIndex],
              index: index,
              selectedIndex: selectedIndex,
            ),
          );
        },
      ),
    );
  }
}
