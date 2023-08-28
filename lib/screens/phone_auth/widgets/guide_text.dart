// 🐦 Flutter imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomGuideText extends StatelessWidget {
  const CustomGuideText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.bodySmallErrorContainer
              .copyWith(letterSpacing: getHorizontalSize(0.04)))
    ]);
  }
}
