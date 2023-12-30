import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_concept/core/utils/app_router.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/features/onboarding/presentation/widgets/getstarted_button.dart';

class OnboardigStack extends StatelessWidget {
  const OnboardigStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Container(
                width: 314,
                height: 450,
                decoration: ShapeDecoration(
                  color: const Color(0xFF672CBC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: SvgPicture.asset(
                  AppAssets.kOnboarding,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 420,
              left: 64,
              child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kAyatView);
                  },
                  child: const GetstartedButton()),
            )
          ],
        ),
      ],
    );
  }
}
