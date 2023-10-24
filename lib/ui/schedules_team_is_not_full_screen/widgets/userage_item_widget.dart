// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_not_full_controller.dart';
import '../models/userage_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class UserAgeWidget extends StatelessWidget {
  UserAgeWidget(
    this.userageItem, {
    super.key,
  });

  UserAgeModel userageItem;

  SchedulesController controller = Get.find<SchedulesController>();

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
                style: textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              userageItem.userMonth!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall!.copyWith(
                color: const Color(0xFF91959D),
              ),
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
                style: textTheme.bodySmall,
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
                style: textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              userageItem.thirtyone!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              userageItem.thirtytwo!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
