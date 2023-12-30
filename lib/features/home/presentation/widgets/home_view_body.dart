import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/widgets/bottom_sheet_widget.dart';
import 'package:quran_concept/core/widgets/custom_app_bar_title.dart';
import 'package:quran_concept/features/home/presentation/widgets/asslam_widget.dart';
import 'package:quran_concept/features/home/presentation/widgets/last_read_box.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const BottomSheetWidget(),
      appBar: AppBar(
        title: const CustomAppBarTitle(
          title: 'Quran App',
          leadingAsset: AppAssets.kMenu,
        ),
        elevation: 0,
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AsslamWidget(),
            SizedBox(
              height: 24,
            ),
            LastReadBox(),
            Spacer(),
          ],
        ),
      )),
    );
  }
}
