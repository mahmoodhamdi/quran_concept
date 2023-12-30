import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/widgets/custom_app_bar_title.dart';

class AyatViewBody extends StatelessWidget {
  const AyatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarTitle(
            title: "Al-Fatiah", leadingAsset: AppAssets.kBackspace),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          children: [
            SizedBox(
              width: 327,
              height: 295,
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    width: 327,
                    height: 295,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        begin: Alignment(0.71, -0.71),
                        end: Alignment(-0.71, 0.71),
                        colors: [Color(0xFF9055FF), Color(0xFFDF98FA)],
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 28,
                            ),
                            const Text(
                              'Al-Fatiah',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              'The Opening',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: 200,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Colors.white
                                        .withOpacity(0.3499999940395355),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'MECCAN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
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
                                  decoration: ShapeDecoration(
                                    color: Colors.white
                                        .withOpacity(0.3499999940395355),
                                    shape: const OvalBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '7 VERSES',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            SvgPicture.asset(
                              AppAssets.kBasmla,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: .20,
                    child: Positioned(
                      top: 50,
                      child: SizedBox(
                        width: 324,
                        height: 198,
                        child: SvgPicture.asset(AppAssets.kSuraQuran),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
