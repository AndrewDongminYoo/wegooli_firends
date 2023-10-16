// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_notices_one_screen/models/list_item_model.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(key: key);

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 15.v,
            ),
            child: Text(
              'msg2'.tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
            ),
            child: Text(
              'lbl_2023_08_23'.tr,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          SizedBox(height: 16.v),
          const Divider(),
        ],
      ),
    );
  }
}
