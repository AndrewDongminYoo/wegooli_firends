// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

class RidingIndicator extends StatelessWidget {
  const RidingIndicator({
    super.key,
    required this.progress,
  });

  final double progress;

  @override
  Widget build(BuildContext context) {
    final width = mediaQueryData.size.width;
    return Column(
      children: [
        customIcon(
          Assets.svg.icoTaxi.path,
          size: 26.adaptSize,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(
              left: width * progress, right: width * (1 - progress)),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            right: 15.h,
          ),
          child: Container(
            height: 10.v,
            width: 328.h,
            decoration: BoxDecoration(
              color: const Color(0x33A4A8AF),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              child: LinearProgressIndicator(
                value: 0.57,
                backgroundColor: const Color(0x33A4A8AF),
                valueColor: AlwaysStoppedAnimation<Color>(
                  lightTheme.primary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
