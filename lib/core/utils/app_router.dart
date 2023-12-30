import 'package:go_router/go_router.dart';
import 'package:quran_concept/features/ayat/presentation/views/ayat_view.dart';
import 'package:quran_concept/features/home/presentation/views/home_view.dart';
import 'package:quran_concept/features/onboarding/presentation/views/onboardin_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kAyatView = '/ayatView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kAyatView,
      builder: (context, state) => const AyatView(),
    ),
  ]);
}
