import 'package:flutter/material.dart';
import 'package:quran_concept/core/widgets/custom_page_app_bar.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/ayat_listview.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/sura_details_stack.dart';

class AyatViewBody extends StatelessWidget {
  const AyatViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomPageAppBar(),
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
