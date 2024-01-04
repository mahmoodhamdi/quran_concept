import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/core/utils/service_locaror.dart';
import 'package:quran_concept/core/widgets/custom_app_bar_title.dart';
import 'package:quran_concept/features/ayat/data/repo/ayat_repo_impl.dart';
import 'package:quran_concept/features/ayat/presentation/manager/ayat_cubit/ayat_cubit.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/ayat_listview.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/sura_details_stack.dart';
import 'package:quran_concept/features/home/data/models/sura_model.dart';

class AyatView extends StatelessWidget {
  const AyatView({super.key, required this.suraModel});
  final SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AyatCubit(getIt.get<AyatRepoImpl>(), suraModel.id)..fetchAyatScript(),
      child: BlocBuilder<AyatCubit, AyatState>(
        builder: (context, state) {
          if (state is AyatSuccess) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: CustomAppBarTitle(
                  leadingOnTap: () {
                    GoRouter.of(context).pop();
                  },
                  title: suraModel.nameSimple,
                  leadingAsset: AppAssets.kBackspace,
                ),
              ),
              body: SafeArea(
                  child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          SuraDetailsStack(
                            suraModel: suraModel,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                        child: AyatListview(
                      ayatModelList: state.ayatList,
                      suraModel: suraModel,
                    )),
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
      ),
    );
  }
}
