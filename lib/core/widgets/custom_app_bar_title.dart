import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/utils/styles.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
    required this.title,
    required this.leadingAsset, this.leadingOnTap, this.searchOnTap,
   });
  final String title;
  final String leadingAsset;
  final void Function()? leadingOnTap;
  final void Function()? searchOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: leadingOnTap,
              child: SvgPicture.asset(
                leadingAsset,
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              title,
              style: getTextStyle(context, DarkTextStyles.appBartitle,
                  LightTextStyles.appBartitle),
            ),
          ],
        ),
        GestureDetector(
          onTap: searchOnTap,
          child: SvgPicture.asset(
            AppAssets.kSearch,
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
