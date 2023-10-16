// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_full_controller.dart';
import '../models/calendar1_item_model.dart';
import '/core/app_export.dart';

// ignore: must_be_immutable
class Calendar1ItemWidget extends StatelessWidget {
  Calendar1ItemWidget(
    this.calendar1ItemModelObj, {
    Key? key,
  }) : super(key: key);

  Calendar1ItemModel calendar1ItemModelObj;

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
                calendar1ItemModelObj.day1!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              calendar1ItemModelObj.day2!.value,
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
                calendar1ItemModelObj.day3!.value,
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
                calendar1ItemModelObj.day4!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              calendar1ItemModelObj.day5!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              calendar1ItemModelObj.day6!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
