// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_controller.dart';
import '../models/notices_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class NoticesItemWidget extends StatelessWidget {
  NoticesItemWidget(
    this.noticesItem, {
    Key? key,
  }) : super(key: key);

  NoticesItemModel noticesItem;

  NoticesController controller = Get.find<NoticesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: BoxDecoration(
        color: defaultColors.onPrimaryContainer,
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
              style: defaultTextTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
            ),
            child: Text(
              '2023.08.23',
              style: defaultTextTheme.bodySmall!.copyWith(
                color: defaultColors.onPrimary.withOpacity(0.4),
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
