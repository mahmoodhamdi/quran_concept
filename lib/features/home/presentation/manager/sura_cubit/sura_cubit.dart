import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quran_concept/features/home/data/models/sura_model.dart';
import 'package:quran_concept/features/home/data/repo/home_repo.dart';

part 'sura_state.dart';

class SuraCubit extends Cubit<SuraState> {
  SuraCubit(this.homeRepo) : super(SuraInitial());
  final HomeRepo homeRepo;
  Future<void> featchSuraDetails() async {
    emit(SuraLoading());
    try {
      final suraDetails = homeRepo.fetchSuraDetails();
      suraDetails.then((result) {
        result.fold((failure) {
          emit(SuraFailure(failure.errMessage));
        }, (suraList) {
          emit(SuraSuccess(suraList));
        });
      });
    } catch (e) {
      emit(SuraFailure(e.toString()));
    }
  }
}
