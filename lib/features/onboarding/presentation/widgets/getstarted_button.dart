import 'package:flutter/material.dart';

class GetstartedButton extends StatelessWidget {
  const GetstartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 65,
      decoration: ShapeDecoration(
        color: const Color(0xFFF9B091),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Center(
        child: Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}
