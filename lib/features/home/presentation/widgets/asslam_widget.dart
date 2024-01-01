import 'package:flutter/material.dart';

class AsslamWidget extends StatelessWidget {
  const AsslamWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
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
    );
  }
}
