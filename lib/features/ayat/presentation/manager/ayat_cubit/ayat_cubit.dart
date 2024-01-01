import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quran_concept/features/ayat/data/models/aya_model.dart';
import 'package:quran_concept/features/ayat/data/repo/ayat_repo.dart';

part 'ayat_state.dart';

class AyatCubit extends Cubit<AyatState> {
  AyatCubit(this.ayatRepo) : super(AyatInitial());
  final AyatRepo ayatRepo;
  Future<void> fetchAyatScript() async {
    emit(AyatLoading());
    try {
      final ayatScripts = ayatRepo.fetchAyatScript(5);
      ayatScripts.then((result) {
        result.fold((failure) {
          emit(AyatFailure(failure.errMessage));
        }, (ayatScriptList) {
          emit(AyatSuccess(ayatScriptList));
        });
      });
    } catch (e) {
      // TODO
    }
  }
}
