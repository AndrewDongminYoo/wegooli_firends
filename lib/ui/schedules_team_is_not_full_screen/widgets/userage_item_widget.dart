// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_not_full_controller.dart';
import '../models/userage_item_model.dart';
import '/core/app_export.dart';

// ignore: must_be_immutable
class UserageItemWidget extends StatelessWidget {
  UserageItemWidget(
    this.userageItemModelObj, {
    Key? key,
  }) : super(key: key);

  UserageItemModel userageItemModelObj;

  SchedulesTeamIsNotFullController controller =
      Get.find<SchedulesTeamIsNotFullController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 17.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                userageItemModelObj.userDay!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              userageItemModelObj.userMonth!.value,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallGray50002,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 3.h,
            ),
            child: Obx(
              () => Text(
                userageItemModelObj.userYear!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              right: 1.h,
            ),
            child: Obx(
              () => Text(
                userageItemModelObj.thirty!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              userageItemModelObj.thirtyone!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              userageItemModelObj.thirtytwo!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
