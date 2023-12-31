import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
        Text(
          'Quran App',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF672CBC),
            fontSize: 28,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        SizedBox(height: 16,),
        SizedBox(
          child: Text(
            textAlign: TextAlign.center,
            'Learn Quran and \nRecite once everyday',
            style: TextStyle(
              color: Color(0xFF8789A3),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
