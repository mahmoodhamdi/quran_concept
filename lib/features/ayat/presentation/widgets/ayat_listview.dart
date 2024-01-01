import 'package:flutter/material.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/aya_content_section.dart';

class AyatListview extends StatelessWidget {
  const AyatListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 55,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const AyaContentSection();
      },
    );
  }
}
