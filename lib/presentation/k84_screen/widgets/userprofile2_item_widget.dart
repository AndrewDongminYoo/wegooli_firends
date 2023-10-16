import 'package:wegooli_friends_app/presentation/k84_screen/models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(key: key);

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36.h,
      child: Column(
        children: [
          Container(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder18,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse12,
              height: 32.adaptSize,
              width: 32.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 3.v),
          Text(
            userprofile2ItemModelObj.userName!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBluegray900_1,
          ),
        ],
      ),
    );
  }
}
