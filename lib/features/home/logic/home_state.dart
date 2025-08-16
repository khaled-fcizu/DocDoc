import 'package:docdoc/core/networking/api_error_model.dart';
import 'package:docdoc/features/home/data/models/speciality_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
    List<SpecializationModel> specializationsList,
  ) = SpecializationSuccess;
  const factory HomeState.specializationError(ApiErrorModel apiErrorModel) =
      SpecializationError;
  const factory HomeState.doctorsSuccess(List<DoctorModel> doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError(ApiErrorModel apiErrorModel) =
      DoctorsError;
}
