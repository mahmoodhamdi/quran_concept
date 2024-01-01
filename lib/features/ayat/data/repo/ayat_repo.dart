import 'package:dartz/dartz.dart';
import 'package:quran_concept/core/errors/failures.dart';
import 'package:quran_concept/features/ayat/data/models/aya_model.dart';

abstract class AyatRepo {
  Future<Either<Failure, List<AyaModel>>> fetchAyatScript();
}
