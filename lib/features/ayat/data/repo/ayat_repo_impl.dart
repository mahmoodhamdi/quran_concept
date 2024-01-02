import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran_concept/core/errors/failures.dart';
import 'package:quran_concept/core/utils/api_service.dart';
import 'package:quran_concept/features/ayat/data/models/sura_details_model.dart';
import 'package:quran_concept/features/ayat/data/repo/ayat_repo.dart';

class AyatRepoImpl implements AyatRepo {
  final ApiService apiService;

  AyatRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<AyatModel>>> fetchAyatScript(int noSurat) async {
    try {
      final response = await apiService.get(
        endPoint: "https://equran.id/api/surat/$noSurat",
      );
      List<AyatModel> ayatModelList = [];
      for (var aya in response['ayat']) {
        ayatModelList.add(AyatModel.fromJson(aya));
        ayatModelList.add(AyatModel.fromJson(aya));
      }
      return Right(ayatModelList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
      // Return a Failure if an error occurs
    }
  }
}
