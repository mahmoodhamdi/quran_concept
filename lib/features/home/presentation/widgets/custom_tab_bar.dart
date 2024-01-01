import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/assets.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
// This widget is the root of your application.
  List<String> tabs = [
    "Sura",
    "Para",
    "Hizb",
    "Page",
  ];
  int current = 0;

  double changePositionedOfLine() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 85;
      case 2:
        return 170;
      case 3:
        return 263;
      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 50;
      case 1:
        return 50;
      case 2:
        return 50;
      case 3:
        return 50;
      default:
        return 0;
    }
  }

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
                  left: changePositionedOfLine(),
                  duration: const Duration(milliseconds: 250),
                  child: AnimatedContainer(
                    margin: const EdgeInsets.only(left: 10),
                    width: changeContainerWidth(),
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
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(height: size.height*.5,
              child: ListView.builder(
                itemCount: 55,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: size.height * .096,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AppAssets.kAyaNumber),
                                          fit: BoxFit.cover)),
                                  child: const Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        color: Color(0xFF230E4E),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * .012,
                                    ),
                                    const Text(
                                      'Al-Fatiah',
                                      style: TextStyle(
                                        color: Color(0xFF230E4E),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'MECCAN',
                                          style: TextStyle(
                                            color: Color(0xFF8789A3),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: const ShapeDecoration(
                                            color: Color(0x59BBC4CE),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '7 VERSES',
                                          style: TextStyle(
                                            color: Color(0xFF8789A3),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Text(
                              'الفاتحة',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF863ED5),
                                fontSize: 20,
                                fontFamily: 'Amiri',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * .005,
                        ),
                        Container(
                          width: size.width,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0x59BBC4CE),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
