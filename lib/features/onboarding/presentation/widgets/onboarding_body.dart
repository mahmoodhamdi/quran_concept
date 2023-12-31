import 'package:flutter/material.dart';
import 'package:quran_concept/features/onboarding/presentation/widgets/onboarding_stack.dart';
import 'package:quran_concept/features/onboarding/presentation/widgets/title_section.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [TitleSection(), OnboardigStack()],
        ),
      ),
    );
  }
}
