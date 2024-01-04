import 'package:flutter/material.dart';
import 'package:quran_concept/core/utils/styles.dart';

class LastReadDetails extends StatelessWidget {
  const LastReadDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Al-Fatiah',
          style: getTextStyle(context, DarkTextStyles.fontSize18Weight600,
              LightTextStyles.fontSize18Weight600),
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.80,
          child: Text(
            'Ayah No: 1',
            style: getTextStyle(context, DarkTextStyles.fontSize14Weight400,
                LightTextStyles.fontSize14Weight400),
          ),
        ),
      ],
    );
  }
}
