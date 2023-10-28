// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
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
      width: 328.w,
      height: 57.h,
      child: Stack(
        children: [
          Positioned(
            left: 0.w,
            top: 39.h,
            child: Text(
              '12:00',
              style: AppTextStyle(
                color: Palette.fontBlack66,
                fontSize: 12,
                lineHeight: 0.12,
                letterSpacing: 0.02,
              ),
            ),
          ),
          Positioned(
            right: 0.w,
            top: 39.h,
            child: Text(
              '13:00',
              textAlign: TextAlign.right,
              style: AppTextStyle(
                color: Palette.fontBlack66,
                fontSize: 12,
                lineHeight: 0.12,
                letterSpacing: 0.02,
              ),
            ),
          ),
          Positioned(
            left: 0.w,
            top: 0.h,
            child: SizedBox(
              width: 328.w,
              height: 36.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0.w,
                    top: 26.h,
                    child: Container(
                      width: 328.w,
                      height: 10.h,
                      decoration: ShapeDecoration(
                        color: Palette.blueGray300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.w,
                    top: 26.h,
                    child: Container(
                      width: (progress * 328).w,
                      height: 10.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFE041),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (progress * 302).w,
                    top: 0.h,
                    child: Container(
                      width: 26.w,
                      height: 26.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        customIcon(
                          Assets.svg.icoTaxi.path,
                          size: 30.w,
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
      left: 0.w,
      top: 26.h.h,
      child: Container(
        width: 328.w.w,
        height: 10.h.h,
        decoration: ShapeDecoration(
          color: Palette.blueGray300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder100,
          ),
        ),
      ),
    );
  }

  Widget endTime() {
    return Positioned(
      left: 0.w.w,
      top: 39.h.h,
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
      right: 0.w.w,
      top: 39.h.h,
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
        horizontal: 16.w,
      ),
      child: SizedBox(
        height: 10.h.h,
        width: 328.w.w,
        child: ClipRRect(
          borderRadius: BorderRadiusStyle.circleBorder65,
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Palette.blueGray300,
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
      width: 328.w.w,
      height: 30.h.h,
      left: (progress * 328).w,
      child: customIcon(
        Assets.svg.icoTaxi.path,
        size: 30.w,
        color: Colors.red,
      ),
    );
  }
}
