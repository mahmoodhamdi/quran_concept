import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/widgets/custom_app_bar_title.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/ayat_listview.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/sura_details_stack.dart';

class AyatViewBody extends StatelessWidget {
  const AyatViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomAppBarTitle(
          title: 'Al-Fatiah',
          leadingAsset: AppAssets.kBackspace,
        ),
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
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
