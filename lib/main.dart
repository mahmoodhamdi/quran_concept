import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quran_concept/core/utils/app_router.dart';
import 'package:quran_concept/core/utils/service_locaror.dart';
import 'package:quran_concept/core/utils/styles.dart';
import 'package:quran_concept/features/home/data/repo/home_repo_impl.dart';
import 'package:quran_concept/features/home/presentation/manager/sura_cubit/sura_cubit.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SuraCubit(
            getIt.get<HomeRepoImpl>(),
          )..featchSuraDetails(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        title: 'Quran Concept',
        theme: getTheme(context),
      ),
    );
  }
}
