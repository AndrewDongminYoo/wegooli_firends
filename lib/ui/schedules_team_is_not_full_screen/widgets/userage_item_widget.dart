// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/schedules_team_is_not_full_screen/models/userage_item_model.dart';

// ignore: must_be_immutable
class UserageItemWidget extends StatelessWidget {
  UserageItemWidget(
    this.userageItemModelObj, {
    Key? key,
  }) : super(key: key);

  UserageItemModel userageItemModelObj;

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
              userageItemModelObj.userDay!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            userageItemModelObj.userMonth!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50003,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 3.h,
            ),
            child: Text(
              userageItemModelObj.userYear!,
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
              userageItemModelObj.thirty!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            userageItemModelObj.thirtyone!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 18.v),
          Text(
            userageItemModelObj.thirtytwo!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
