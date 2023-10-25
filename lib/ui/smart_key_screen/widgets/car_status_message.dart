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
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            '|',
            style: textTheme.bodySmall!.copyWith(
              color: Palette.fontBlack66,
            ),
          ),
        ),
        Container(
          height: 4.adaptSize,
          width: 4.adaptSize,
          margin: EdgeInsets.only(
            left: 5.h,
            top: 5.v,
            bottom: 5.v,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFE82121),
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            '홍길동님이 사용중입니다.',
            style: textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
