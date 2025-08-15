import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docdoc/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;
  Future<void> emitAllSpecializations() async {
    emit(SpecializationLoading());
    var response = await _homeRepo.getSpecializationData();
    response.when(
      success: (specializationsList) {
        emit(
          SpecializationSuccess(specializationsList.specializationsList ?? []),
        );
      },
      failure: (apiErrorModel) {
        emit(SpecializationError(apiErrorModel));
      },
    );
  }
}
