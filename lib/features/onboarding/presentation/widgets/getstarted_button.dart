import 'package:flutter/material.dart';

class GetstartedButton extends StatelessWidget {
  const GetstartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.4,
      height: screenWidth * 0.14,
      decoration: ShapeDecoration(
        color: const Color(0xFFF9B091),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.07),
        ),
      ),
      child: Center(
        child: Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.04,
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
