import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/features/home/data/models/sura_model.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({
    super.key,
    required this.suraModel,
  });
  final SuraModel suraModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            Text(
              suraModel.nameArabic,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Amiri',
                fontWeight: FontWeight.w900,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              suraModel.nameSimple,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 200,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.3499999940395355),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  suraModel.revelationPlace,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.3499999940395355),
                    shape: const OvalBorder(),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${suraModel.versesCount} VERSES',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            SvgPicture.asset(
              AppAssets.kBasmla,
              height: 48,
            ),
          ],
        ),
      ],
    );
  }
}
