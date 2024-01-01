import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/widgets/custom_app_bar_title.dart';
import 'package:quran_concept/features/ayat/presentation/manager/ayat_cubit/ayat_cubit.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/ayat_listview.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/sura_details_stack.dart';

class AyatView extends StatelessWidget {
  const AyatView({super.key, required this.suraId});
  final int suraId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AyatCubit, AyatState>(
      builder: (context, state) {
        if (state is AyatSuccess) {
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
        } else if (state is AyatFailure) {
          return Scaffold(
            body: Center(
              child: Text(state.errMessage),
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
