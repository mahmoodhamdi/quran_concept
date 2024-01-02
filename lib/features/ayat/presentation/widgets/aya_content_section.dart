import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/features/ayat/data/models/sura_details_model.dart';

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
            color: const Color(0x0C121931),
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
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
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
                  style: const TextStyle(
                    color: Color(0xFF230E4E),
                    fontSize: 18,
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(
                child: Text(
                  '[All] praise is [due] to Allah, Lord of the worlds - ',
                  style: TextStyle(
                    color: Color(0xFF230E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0x59BBC4CE),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
