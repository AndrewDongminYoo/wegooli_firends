// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k72_screen/models/datecolumn_item_model.dart';

// ignore: must_be_immutable
class DatecolumnItemWidget extends StatelessWidget {
  DatecolumnItemWidget(
    this.datecolumnItemModelObj, {
    Key? key,
  }) : super(key: key);

  DatecolumnItemModel datecolumnItemModelObj;

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
              datecolumnItemModelObj.day!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            datecolumnItemModelObj.date1!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50003,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 3.h,
            ),
            child: Text(
              datecolumnItemModelObj.date2!,
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
              datecolumnItemModelObj.date3!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            datecolumnItemModelObj.date4!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 18.v),
          Text(
            datecolumnItemModelObj.date5!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
