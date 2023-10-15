import '../models/calendar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class CalendarItemWidget extends StatelessWidget {
  CalendarItemWidget(
    this.calendarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CalendarItemModel calendarItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 17.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              calendarItemModelObj.day!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            calendarItemModelObj.date1!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50003,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 3.h,
            ),
            child: Text(
              calendarItemModelObj.date2!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              right: 1.h,
            ),
            child: Text(
              calendarItemModelObj.date3!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            calendarItemModelObj.date4!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 18.v),
          Text(
            calendarItemModelObj.date5!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
