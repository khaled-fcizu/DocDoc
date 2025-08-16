import 'package:docdoc/core/networking/api_error_model.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/models/speciality_response_model.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docdoc/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;
  List<SpecializationModel>? specializationsList = [];
  Future<void> emitAllSpecializationsStates() async {
    emit(SpecializationLoading());
    var response = await _homeRepo.getSpecializationData();
    response.when(
      success: (specialityResponseModel) {
        specializationsList = specialityResponseModel.specializationsList ?? [];
        emitAllDoctorsStates(
          specailizationId: specializationsList?.first.id ?? 1,
        );
        emit(
          SpecializationSuccess(
            specialityResponseModel.specializationsList ?? [],
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(SpecializationError(apiErrorModel));
      },
    );
  }

  void emitAllDoctorsStates({required int? specailizationId}) {
    List<DoctorModel>? doctorsList = filterDoctorsBasedOnSpecailizationId(
      specailizationId: specailizationId,
    );
    if (doctorsList == null || doctorsList.isEmpty) {
      emit(
        DoctorsError(
          ApiErrorModel(message: 'No doctors for this specialization'),
        ),
      );
    } else {
      emit(DoctorsSuccess(doctorsList));
    }
  }

  filterDoctorsBasedOnSpecailizationId({required int? specailizationId}) {
    return specializationsList
        ?.firstWhere((element) => element.id == specailizationId)
        .doctorsList;
  }
}
