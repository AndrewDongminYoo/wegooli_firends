// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_controller.dart';
import '../models/calendar_item_model.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class CalendarItemWidget extends StatelessWidget {
  CalendarItemWidget(
    this.calendarItem, {
    Key? key,
  }) : super(key: key);

  CalendarItemModel calendarItem;

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
                calendarItem.dayOfWeek!.value,
                overflow: TextOverflow.ellipsis,
                style: textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              calendarItem.date1!.value,
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
                calendarItem.date2!.value,
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
                calendarItem.date3!.value,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              calendarItem.date4!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              calendarItem.date5!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
