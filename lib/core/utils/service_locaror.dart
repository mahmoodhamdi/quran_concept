import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quran_concept/features/ayat/data/repo/ayat_repo_impl.dart';
import 'package:quran_concept/features/home/data/repo/home_repo_impl.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
  getIt.registerSingleton<AyatRepoImpl>(AyatRepoImpl(
    getIt.get<ApiService>(),
  ));
}
