// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/text_styles.dart';
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
    return SizedBox(
      width: 328.h,
      height: 57.v,
      child: Stack(
        children: [
          Positioned(
            left: 0.h,
            top: 39.v,
            child: Text(
              '12:00',
              style: AppTextStyle(
                color: const Color(0x66222222),
                fontSize: 12,
                lineHeight: 0.12,
                letterSpacing: 0.02,
              ),
            ),
          ),
          Positioned(
            right: 0.h,
            top: 39.v,
            child: Text(
              '13:00',
              textAlign: TextAlign.right,
              style: AppTextStyle(
                color: const Color(0x66222222),
                fontSize: 12,
                lineHeight: 0.12,
                letterSpacing: 0.02,
              ),
            ),
          ),
          Positioned(
            left: 0.h,
            top: 0.v,
            child: SizedBox(
              width: 328.h,
              height: 36.v,
              child: Stack(
                children: [
                  Positioned(
                    left: 0.h,
                    top: 26.v,
                    child: Container(
                      width: 328.h,
                      height: 10.v,
                      decoration: ShapeDecoration(
                        color: const Color(0x33A4A8AF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.h,
                    top: 26.v,
                    child: Container(
                      width: (progress * 328).h,
                      height: 10.v,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFE041),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (progress * 302).h,
                    top: 0.v,
                    child: Container(
                      width: 26.h,
                      height: 26.v,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        customIcon(
                          Assets.svg.icoTaxi.path,
                          size: 30.adaptSize,
                          color: Colors.red,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned bar() {
    return Positioned(
      left: 0.h,
      top: 26.v.v,
      child: Container(
        width: 328.h.h,
        height: 10.v.v,
        decoration: ShapeDecoration(
          color: const Color(0x33A4A8AF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder100,
          ),
        ),
      ),
    );
  }

  Widget endTime() {
    return Positioned(
      left: 0.h.h,
      top: 39.v.v,
      child: Text(
        '13:00',
        style: textTheme.bodySmall!.copyWith(
          color: Palette.fontBlack66,
        ),
      ),
    );
  }

  Widget startTime() {
    return Positioned(
      right: 0.h.h,
      top: 39.v.v,
      child: Text(
        '12:00',
        style: textTheme.bodySmall!.copyWith(
          color: Palette.fontBlack66,
        ),
      ),
    );
  }

  Padding indicator() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
      ),
      child: SizedBox(
        height: 10.v.v,
        width: 328.h.h,
        child: ClipRRect(
          borderRadius: BorderRadiusStyle.circleBorder65,
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0x33A4A8AF),
            valueColor: AlwaysStoppedAnimation<Color>(
              lightTheme.primary,
            ),
          ),
        ),
      ),
    );
  }

  Positioned taxi() {
    return Positioned(
      width: 328.h.h,
      height: 30.v.v,
      left: (progress * 328).h,
      child: customIcon(
        Assets.svg.icoTaxi.path,
        size: 30.adaptSize,
        color: Colors.red,
      ),
    );
  }
}
