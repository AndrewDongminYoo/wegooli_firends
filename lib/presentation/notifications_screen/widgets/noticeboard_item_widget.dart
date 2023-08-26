import '../controller/notifications_controller.dart';
import '../models/noticeboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';

// ignore: must_be_immutable
class NoticeboardItemWidget extends StatelessWidget {
  NoticeboardItemWidget(
    this.noticeboardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NoticeboardItemModel noticeboardItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        right: 15,
      ),
      decoration: AppDecoration.fillAmberA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 1,
              top: 15,
            ),
            child: Text(
              "msg17".tr,
              style: CustomTextStyles.titleSmallOnPrimaryMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 3,
            ),
            child: Text(
              "lbl_2023_08_23".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
