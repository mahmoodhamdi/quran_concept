import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/styles.dart';

class AyaContentBlock extends StatelessWidget {
  const AyaContentBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
              style: getTextStyle(
                  context,
                  DarkTextStyles.fontSize18Weight700Amiri,
                  LightTextStyles.fontSize18Weight700Amiri),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            child: Text(
              '[All] praise is [due] to Allah, Lord of the worlds - ',
              style: getTextStyle(context, DarkTextStyles.fontSize16Weight400,
                  LightTextStyles.fontSize16Weight400),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: getDividerColor(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
