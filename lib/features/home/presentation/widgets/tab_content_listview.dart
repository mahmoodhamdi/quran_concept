import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_concept/core/utils/app_router.dart';
import 'package:quran_concept/features/home/presentation/manager/sura_cubit/sura_cubit.dart';
import 'package:quran_concept/features/home/presentation/widgets/tab_content_item.dart';

class TabContentListview extends StatelessWidget {
  const TabContentListview({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: size.height * .5,
        child: BlocBuilder<SuraCubit, SuraState>(
          builder: (context, state) {
            if (state is SuraSuccess) {
              return ListView.builder(
                itemCount: state.suraList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kAyatView);
                      },
                      child: TabContentItem(
                        size: size,
                        suraModel: state.suraList[index],
                      ));
                },
              );
            } else if (state is SuraFailure) {
              return Center(
                child: Text(state.errMessage),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
