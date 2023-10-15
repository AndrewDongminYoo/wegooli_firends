import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Column(
        children: [
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse1,
              height: 42.adaptSize,
              width: 42.adaptSize,
              radius: BorderRadius.circular(
                21.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            userprofileItemModelObj.userName!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
