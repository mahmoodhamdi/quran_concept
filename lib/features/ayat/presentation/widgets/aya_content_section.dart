import 'package:flutter/material.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/aya_content_block.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/aya_functions_block.dart';

class AyaContentSection extends StatelessWidget {
  const AyaContentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 47,
          decoration: ShapeDecoration(
            color: const Color(0x0C121931),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const AyaFunctionsBlock(),
        ),
        const AyaContentBlock(),
      ],
    );
  }
}
