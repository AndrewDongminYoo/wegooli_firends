// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_one_controller.dart';
import '../models/notices_one_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class NoticesOneItemWidget extends StatelessWidget {
  NoticesOneItemWidget(
    this.noticesOneItem, {
    super.key,
  });

  NoticesOneItemModel noticesOneItem;

  NoticesOneController controller = Get.find<NoticesOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: BoxDecoration(
        color: lightTheme.onPrimaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 15.v,
            ),
            child: Text(
              '[공지] 산모퉁이를 돌아 논가 외딴 우물을 홀로 찾아가선',
              style: textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
            ),
            child: Text(
              '2023.08.23',
              style: textTheme.bodySmall!.copyWith(
                color: lightTheme.onPrimary.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          const Divider(),
        ],
      ),
    );
  }
}
