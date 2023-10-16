// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_not_full_controller.dart';
import '../models/userage_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class UserageItemWidget extends StatelessWidget {
  UserageItemWidget(
    this.userageItem, {
    Key? key,
  }) : super(key: key);

  UserageItemModel userageItem;

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
                userageItem.userDay!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              userageItem.userMonth!.value,
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
                userageItem.userYear!.value,
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
                userageItem.thirty!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              userageItem.thirtyone!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              userageItem.thirtytwo!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
