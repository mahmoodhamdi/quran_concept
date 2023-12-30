import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        color: Colors.white,
        boxShadow: [
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
