// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_full_controller.dart';
import '../models/calendar1_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class Calendar1ItemWidget extends StatelessWidget {
  Calendar1ItemWidget(
    this.calendar1Item, {
    Key? key,
  }) : super(key: key);

  Calendar1ItemModel calendar1Item;

  SchedulesTeamIsFullController controller =
      Get.find<SchedulesTeamIsFullController>();

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
                calendar1Item.day1!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              calendar1Item.day2!.value,
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
                calendar1Item.day3!.value,
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
                calendar1Item.day4!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              calendar1Item.day5!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              calendar1Item.day6!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
