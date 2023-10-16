// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k72_screen/models/userprofile1_item_model.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(key: key);

  Userprofile1ItemModel userprofile1ItemModelObj;

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
            userprofile1ItemModelObj.userName!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
