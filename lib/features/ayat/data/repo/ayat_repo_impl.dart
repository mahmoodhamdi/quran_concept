import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran_concept/core/errors/failures.dart';
import 'package:quran_concept/core/utils/api_service.dart';
import 'package:quran_concept/features/ayat/data/models/aya_model.dart';
import 'package:quran_concept/features/ayat/data/repo/ayat_repo.dart';

class AyatRepoImpl implements AyatRepo {
  final ApiService apiService;

  AyatRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<AyaModel>>> fetchAyatScript(int chapterId) async {
    try {
      final response = await apiService.get(endPoint: "quran/verses/uthmani",
        queryParameters: {"chapter_number": chapterId},
      );
      // Decode the JSON data
      List<Map<String, dynamic>> ayaScript =
          List<Map<String, dynamic>>.from(response['verses']);

      // Create a list of SurahModel objects
      List<AyaModel> ayatList =
          ayaScript.map((data) => AyaModel.fromJson(data)).toList();

      // Now surahList contains a list of SurahModel objects
      return Right(ayatList);
      // Return a Failure if the response is not successful
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
