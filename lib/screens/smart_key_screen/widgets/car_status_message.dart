// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

class CarStatusMessage extends StatelessWidget {
  const CarStatusMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '상태',
          style: textTheme.bodySmall!.copyWith(
            color: Palette.fontBlack66,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Text(
            '|',
            style: textTheme.bodySmall!.copyWith(
              color: Palette.fontBlack66,
            ),
          ),
        ),
        Container(
          height: 4.w,
          width: 4.w,
          margin: EdgeInsets.only(
            left: 5.w,
            top: 5.h,
            bottom: 5.h,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFE82121),
            borderRadius: BorderRadius.circular(
              2.w,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.w),
          child: Text(
            '홍길동님이 사용중입니다.',
            style: textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
