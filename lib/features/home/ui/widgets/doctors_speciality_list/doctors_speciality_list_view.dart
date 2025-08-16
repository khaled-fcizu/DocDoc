import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_list/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatefulWidget {
  const DoctorsSpecialityListView({super.key});

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
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                context.read<HomeCubit>().emitAllDoctorsStates(selectedIndex);
              });
            },
            child: DoctorsSpecialityListViewItem(
              index: index,
              selectedIndex: selectedIndex,
            ),
          );
        },
      ),
    );
  }
}
