import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/features/onboarding/presentation/widgets/getstarted_button.dart';

class OnboardigStack extends StatelessWidget {
  const OnboardigStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = 314 / 455;
    double responsiveWidth = screenWidth * 0.82;
    double responsiveHeight = responsiveWidth / aspectRatio;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Container(
                width: responsiveWidth,
                height: responsiveHeight,
                decoration: ShapeDecoration(
                  color: const Color(0xFF672CBC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.04),
                  ),
                ),
                child: SvgPicture.asset(
                  AppAssets.kOnboarding,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: responsiveHeight - screenWidth * 0.08,
              left: responsiveWidth * 0.25,
              right: responsiveWidth * 0.25,
              child: const GetstartedButton(),
            ),
          ],
        ),
      ],
    );
  }
}
