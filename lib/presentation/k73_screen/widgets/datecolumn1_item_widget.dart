import 'package:wegooli_friends_app/presentation/k73_screen/models/datecolumn1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class Datecolumn1ItemWidget extends StatelessWidget {
  Datecolumn1ItemWidget(
    this.datecolumn1ItemModelObj, {
    Key? key,
  }) : super(key: key);

  Datecolumn1ItemModel datecolumn1ItemModelObj;

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
              datecolumn1ItemModelObj.day!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            datecolumn1ItemModelObj.date1!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50003,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 3.h,
            ),
            child: Text(
              datecolumn1ItemModelObj.date2!,
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
              datecolumn1ItemModelObj.date3!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            datecolumn1ItemModelObj.date4!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 18.v),
          Text(
            datecolumn1ItemModelObj.date5!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
