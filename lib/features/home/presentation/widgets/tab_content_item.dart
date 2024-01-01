import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/assets.dart';

class TabContentItem extends StatelessWidget {
  const TabContentItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * .096,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.kAyaNumber),
                            fit: BoxFit.cover)),
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Color(0xFF230E4E),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * .012,
                      ),
                      const Text(
                        'Al-Fatiah',
                        style: TextStyle(
                          color: Color(0xFF230E4E),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'MECCAN',
                            style: TextStyle(
                              color: Color(0xFF8789A3),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Color(0x59BBC4CE),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '7 VERSES',
                            style: TextStyle(
                              color: Color(0xFF8789A3),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .005,
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                'الفاتحة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF863ED5),
                  fontSize: 20,
                  fontFamily: 'Amiri',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * .005,
          ),
          Container(
            width: size.width,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0x59BBC4CE),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
