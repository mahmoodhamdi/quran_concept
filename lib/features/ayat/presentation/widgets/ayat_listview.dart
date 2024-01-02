import 'package:flutter/material.dart';
import 'package:quran_concept/features/ayat/data/models/ayat_model.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/aya_content_section.dart';
import 'package:quran_concept/features/home/data/models/sura_model.dart';

class AyatListview extends StatelessWidget {
  const AyatListview(
      {super.key, required this.suraModel, required this.ayatModelList});
  final SuraModel suraModel;
  final List<AyatModel> ayatModelList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: suraModel.versesCount,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return AyaContentSection(
          index: index,
          ayatModel: ayatModelList[index],
        );
      },
    );
  }
}
