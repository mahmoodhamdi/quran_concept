import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/utils/styles.dart';
import 'package:quran_concept/features/home/data/models/sura_model.dart';

class TabContentItem extends StatelessWidget {
  const TabContentItem({
    super.key,
    required this.size,
    required this.suraModel,
  });

  final Size size;
  final SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * .096,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.kAyaNumber),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "${suraModel.id}",
                        style: getTextStyle(
                            context,
                            DarkTextStyles.fontSize14Weight500,
                            LightTextStyles.fontSize14Weight500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * .012,
                      ),
                      Text(
                        suraModel.nameSimple.toUpperCase(),
                        style: getTextStyle(
                            context,
                            DarkTextStyles.fontSize16Weight500,
                            LightTextStyles.fontSize16Weight500),
                      ),
                      Row(
                        children: [
                          Text(suraModel.revelationPlace.toUpperCase(),
                              style: getTextStyle(
                                  context,
                                  DarkTextStyles.fontSize12Weight500,
                                  LightTextStyles.fontSize12Weight500)),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0x59BBC4CE),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${suraModel.versesCount} VERSES",
                            style: getTextStyle(
                                context,
                                DarkTextStyles.fontSize12Weight500,
                                LightTextStyles.fontSize12Weight500),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .005,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                suraModel.nameArabic,
                textAlign: TextAlign.right,
                style: getTextStyle(
                    context,
                    DarkTextStyles.fontSize20Weight700Amiri,
                    LightTextStyles.fontSize20Weight700Amiri),
              )
            ],
          ),
          SizedBox(
            height: size.height * .005,
          ),
          Container(
            width: size.width,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: getDividerColor(context),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
