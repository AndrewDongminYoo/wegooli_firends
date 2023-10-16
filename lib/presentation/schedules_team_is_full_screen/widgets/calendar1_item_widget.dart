import '../models/calendar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class Calendar1ItemWidget extends StatelessWidget {
  Calendar1ItemWidget(
    this.calendar1ItemModelObj, {
    Key? key,
  }) : super(key: key);

  Calendar1ItemModel calendar1ItemModelObj;

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
              calendar1ItemModelObj.dayOne!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            calendar1ItemModelObj.dayTwo!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50003,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 3.h,
            ),
            child: Text(
              calendar1ItemModelObj.dayThree!,
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
              calendar1ItemModelObj.dayFour!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            calendar1ItemModelObj.dayFive!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 18.v),
          Text(
            calendar1ItemModelObj.daySix!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
