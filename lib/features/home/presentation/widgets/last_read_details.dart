import 'package:flutter/material.dart';

class LastReadDetails extends StatelessWidget {
  const LastReadDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Al-Fatiah',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.80,
          child: Text(
            'Ayah No: 1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
