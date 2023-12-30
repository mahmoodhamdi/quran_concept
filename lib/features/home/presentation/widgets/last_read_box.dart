import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_concept/features/home/presentation/widgets/last_read_details.dart';

class LastReadBox extends StatelessWidget {
  const LastReadBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: 326,
      height: 131,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.71, -0.71),
          end: Alignment(-0.71, 0.71),
          colors: [Color(0xFF9055FF), Color(0xFFDF98FA)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/svgs/lastreadicon.svg",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Last Read',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const LastReadDetails(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset("assets/images/svgs/lastread.svg")),
            ],
          )
        ],
      ),
    );
  }
}
