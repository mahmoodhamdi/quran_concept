import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/core/utils/assets.dart';

class AyaFunctionsBlock extends StatelessWidget {
  const AyaFunctionsBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 27,
            height: 27,
            decoration: ShapeDecoration(
              color: const Color(0xFF863ED5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.50),
              ),
            ),
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(AppAssets.kShareFrame),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(AppAssets.kPlayFrame),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(AppAssets.kBromarkFrame),
            ],
          ),
        ],
      ),
    );
  }
}
