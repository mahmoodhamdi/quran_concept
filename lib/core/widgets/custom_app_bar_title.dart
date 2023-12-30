import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
    required this.title,
    required this.leadingAsset,
  });
  final String title;
  final String leadingAsset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              leadingAsset,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF672CBC),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ],
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
