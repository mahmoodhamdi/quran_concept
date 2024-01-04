import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/utils/styles.dart';
import 'package:quran_concept/features/home/presentation/widgets/last_read_details.dart';

class LastReadBox extends StatelessWidget {
  const LastReadBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      clipBehavior: Clip.none,
      width: double.infinity,
      height: height * 0.19,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.71, -0.71),
          end: Alignment(-0.71, 0.71),
          colors: [Color(0xFF9055FF), Color(0xFFDF98FA)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.kLastReadIcon,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Last Read',
                      style: getTextStyle(
                          context,
                          DarkTextStyles.fontSize14Weight500,
                          LightTextStyles.fontSize14Weight500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const LastReadDetails(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(AppAssets.kLastRead)),
            ],
          )
        ],
      ),
    );
  }
}
