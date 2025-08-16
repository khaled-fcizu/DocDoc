import 'package:docdoc/core/helpers/spaces_helpers.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_list/doctors_speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

class DoctorSpecialitizationBlocBuilder extends StatelessWidget {
  const DoctorSpecialitizationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationError ||
          current is SpecializationSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () {
            return Expanded(
              child: Column(
                children: [
                  SpecialityShimmerLoading(),
                  verticalSpace(18),
                  DoctorsShimmerLoading(),
                ],
              ),
            );
          },
          specializationSuccess: (specializationsList) {
            return DoctorsSpecialityListView(
              specializationsList: specializationsList,
            );
          },
          specializationError: (apiErrorModel) {
            return Center(
              child: Text(
                apiErrorModel.getAllErrorMessages(),
                style: TextStyles.font13DarkBlueMeduim,
              ),
            );
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
