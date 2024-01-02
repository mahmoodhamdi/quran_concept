import 'package:dartz/dartz.dart';
import 'package:quran_concept/core/errors/failures.dart';
import 'package:quran_concept/features/ayat/data/models/ayat_model.dart';

abstract class AyatRepo {
  Future<Either<Failure, List<AyatModel>>> fetchAyatScript(int noSurat);
}
