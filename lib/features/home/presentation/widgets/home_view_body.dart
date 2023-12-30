import 'package:flutter/material.dart';
import 'package:quran_concept/core/widgets/custom_app_bar_title.dart';
import 'package:quran_concept/features/home/presentation/widgets/last_read_box.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarTitle(),
        elevation: 0,
        leadingWidth: 24,
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 257,
                  child: Opacity(
                    opacity: 0.80,
                    child: Text(
                      'Asslamualaikum',
                      style: TextStyle(
                        color: Color(0xFF8789A3),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Mahmoud Hamdy',
                  style: TextStyle(
                    color: Color(0xFF230E4E),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            LastReadBox()
          ],
        ),
      )),
    );
  }
}
