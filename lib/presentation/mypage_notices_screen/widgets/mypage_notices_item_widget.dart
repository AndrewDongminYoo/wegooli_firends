import '../models/mypage_notices_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class MypageNoticesItemWidget extends StatelessWidget {
  MypageNoticesItemWidget(
    this.mypageNoticesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MypageNoticesItemModel mypageNoticesItemModelObj;

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
              "msg2".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
            ),
            child: Text(
              "lbl_2023_08_23".tr,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          SizedBox(height: 16.v),
          Divider(),
        ],
      ),
    );
  }
}
