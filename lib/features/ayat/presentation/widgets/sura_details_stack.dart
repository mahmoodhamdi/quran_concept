import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';
import 'package:quran_concept/features/ayat/presentation/widgets/sura_details.dart';

class SuraDetailsStack extends StatelessWidget {
  const SuraDetailsStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 295,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            width: double.infinity,
            height: 295,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gradient: LinearGradient(
                begin: Alignment(0.71, -0.71),
                end: Alignment(-0.71, 0.71),
                colors: [Color(0xFFDF98FA), Color(0xFF9055FF)],
              ),
            ),
            child: SuraDetails(),
          ),
          Opacity(
            opacity: .15,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                AppAssets.kSuraQuran,
                height: 180,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
