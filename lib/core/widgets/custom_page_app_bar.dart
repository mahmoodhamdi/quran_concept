import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';

class CustomPageAppBar extends StatelessWidget {
  const CustomPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 1,
        ),
        const Text(
          "title",
          style: TextStyle(
            color: Color(0xFF672CBC),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            height: 0,
          ),
        ),
        const Spacer(
          flex: 100,
        ),
        SvgPicture.asset(
          AppAssets.kSearch,
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}
