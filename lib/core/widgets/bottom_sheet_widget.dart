import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/styles.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * .12,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        color: getBottomSheetContainerColor(context),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33B9B0CE),
            blurRadius: 16,
            offset: Offset(0, -4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/images/svgs/quranicon.svg",
            height: 28,
            width: 28,
          ),
          SvgPicture.asset(
            "assets/images/svgs/prayer.svg",
            height: 28,
            width: 28,
          ),
          SvgPicture.asset(
            "assets/images/svgs/ayaofday.svg",
            height: 28,
            width: 28,
          ),
          SvgPicture.asset(
            "assets/images/svgs/azkar.svg",
            height: 28,
            width: 28,
          ),
          SvgPicture.asset(
            "assets/images/svgs/bookmark.svg",
            height: 28,
            width: 28,
          ),
        ],
      ),
    );
  }
}
