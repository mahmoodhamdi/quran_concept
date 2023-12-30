import 'package:flutter/material.dart';

class AyaContentBlock extends StatelessWidget {
  const AyaContentBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text(
              'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
              style: TextStyle(
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
    );
  }
}
