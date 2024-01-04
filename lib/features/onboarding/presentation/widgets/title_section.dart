import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/styles.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Quran App',
          textAlign: TextAlign.center,
          style: getTextStyle(context, DarkTextStyles.onBoardingtitle,
              LightTextStyles.onBoardingtitle),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          child: Text(
            textAlign: TextAlign.center,
            'Learn Quran and \nRecite once everyday',
            style: getTextStyle(context, DarkTextStyles.onBoardingSubtitle,
                LightTextStyles.onBoardingSubtitle),
          ),
        ),
      ],
    );
  }
}
