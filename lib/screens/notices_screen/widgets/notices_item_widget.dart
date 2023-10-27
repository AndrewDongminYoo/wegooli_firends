// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/notices_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class NoticesItemWidget extends StatelessWidget {
  const NoticesItemWidget(
    this.notices, {
    super.key,
  });

  final NoticesItemModel notices;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.w,
              top: 15.h,
            ),
            child: Text(
              '[공지] 산모퉁이를 돌아 논가 외딴 우물을 홀로 찾아가선',
              style: textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.w,
              top: 3.h,
            ),
            child: Text(
              '2023.08.23',
              style: textTheme.bodySmall!.copyWith(
                color: Palette.fontBlack66,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          const Divider(),
        ],
      ),
    );
  }
}
