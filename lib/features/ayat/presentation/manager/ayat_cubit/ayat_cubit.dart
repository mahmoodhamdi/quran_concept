import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quran_concept/features/ayat/data/models/ayat_model.dart';
import 'package:quran_concept/features/ayat/data/repo/ayat_repo.dart';

part 'ayat_state.dart';

class AyatCubit extends Cubit<AyatState> {
  AyatCubit(this.ayatRepo, this.noSurat) : super(AyatInitial());
  final AyatRepo ayatRepo;
  final int noSurat;
  Future<void> fetchAyatScript() async {
    emit(AyatLoading());
    try {
      final ayatScripts = ayatRepo.fetchAyatScript(noSurat);
      ayatScripts.then((result) {
        result.fold((failure) {
          emit(AyatFailure(failure.errMessage));
        }, (ayatScriptList) {
          emit(AyatSuccess(ayatScriptList));
        });
      });
    } catch (e) {
      emit(AyatFailure(e.toString()));
    }
  }
}
