import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              "assets/images/svgs/menu.svg",
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 24,
            ),
            const Text(
              'Quran App',
              style: TextStyle(
                color: Color(0xFF672CBC),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          "assets/images/svgs/search.svg",
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}
