// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/notices_one_controller.dart';
import '../models/notices_one_item_model.dart';
import '/core/app_export.dart';

// ignore: must_be_immutable
class NoticesOneItemWidget extends StatelessWidget {
  NoticesOneItemWidget(
    this.noticesOneItemModelObj, {
    Key? key,
  }) : super(key: key);

  NoticesOneItemModel noticesOneItemModelObj;

  NoticesOneController controller = Get.find<NoticesOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: AppDecoration.shadow,
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
              'msg2'.tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
            ),
            child: Text(
              'lbl_2023_08_23'.tr,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          SizedBox(height: 16.v),
          const Divider(),
        ],
      ),
    );
  }
}
