import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/helpers/helpers.dart';
import 'package:quran_concept/features/home/presentation/widgets/tab_content_listview.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
// This widget is the root of your application.
  
  int current = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            width: double.infinity,
            height: size.height * 0.05,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: size.width,
                    height: size.height * 0.04,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: tabs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 16 : 50, top: 7),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: Text(
                                tabs[index],
                                style: current == index
                                    ? const TextStyle(
                                        color: Color(0xFF672CBC),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      )
                                    : const TextStyle(
                                        color: Color(0xFF8789A3),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                AnimatedPositioned(
                  curve: Curves.fastLinearToSlowEaseIn,
                  bottom: 0,
                  left: changePositionedOfLine(current),
                  duration: const Duration(milliseconds: 250),
                  child: AnimatedContainer(
                    margin: const EdgeInsets.only(left: 10),
                    width: changeContainerWidth(current),
                    height: size.height * 0.0048,
                    decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                    ),
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.linear,
                  ),
                )
              ],
            ),
          ),
          TabContentListview(size: size)
        ],
      ),
    );
  }
}
