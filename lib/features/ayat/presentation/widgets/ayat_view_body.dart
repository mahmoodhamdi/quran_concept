import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/ayat_listview.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/sura_details_stack.dart';

class AyatViewBody extends StatelessWidget {
  const AyatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
           children: [
            const Row(
              children: [Spacer(flex: 2,),
                 Text(
                  "title",
                  style: TextStyle(
                    color: Color(0xFF672CBC),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
              ],
            ),
            Spacer(flex: 3,),
            SvgPicture.asset(
              AppAssets.kSearch,
              width: 24,
              height: 24,
            ),
          ],
        ),
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SuraDetailsStack(),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(child: AyatListview()),
          ],
        ),
      )),
    );
  }
}
