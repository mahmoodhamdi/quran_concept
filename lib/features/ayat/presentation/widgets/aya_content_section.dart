import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/utils/styles.dart';
import 'package:quran_concept/features/ayat/data/models/ayat_model.dart';

class AyaContentSection extends StatelessWidget {
  const AyaContentSection({
    super.key,
    required this.index,
    required this.ayatModel,
  });
  final int index;
  final AyatModel ayatModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 47,
          decoration: ShapeDecoration(
            color: getAyatFucntionsContainerColor(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF863ED5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.50),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: LightTextStyles.fontSize14Weight600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.kShareFrame),
                    const SizedBox(
                      width: 16,
                    ),
                    SvgPicture.asset(AppAssets.kPlayFrame),
                    const SizedBox(
                      width: 16,
                    ),
                    SvgPicture.asset(AppAssets.kBromarkFrame),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
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
                  ayatModel.ar,
                  style: getTextStyle(
                      context,
                      DarkTextStyles.fontSize20Weight700Amiri,
                      LightTextStyles.fontSize20Weight700Amiri),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: Text(
                  ayatModel.idn,
                  style: getTextStyle(
                      context,
                      DarkTextStyles.fontSize14Weight400,
                      LightTextStyles.fontSize14Weight400),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: .3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: getDividerColor(context),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
