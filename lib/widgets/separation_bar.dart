// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

class SeparationBar extends StatelessWidget {
  const SeparationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Palette.separator,
      ),
    );
  }
}
