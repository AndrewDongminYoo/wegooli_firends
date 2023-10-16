import 'package:wegooli_friends_app/presentation/mypage_contact_us_1_1_contact_us_screen/models/listaddphotoalt_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListaddphotoaltItemWidget extends StatelessWidget {
  ListaddphotoaltItemWidget(
    this.listaddphotoaltItemModelObj, {
    Key? key,
  }) : super(key: key);

  ListaddphotoaltItemModel listaddphotoaltItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 66.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomIconButton(
          height: 66.adaptSize,
          width: 66.adaptSize,
          margin: EdgeInsets.only(top: 5.v),
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillBlueGrayTL5,
          child: CustomImageView(
            svgPath: ImageConstant.imgAddphotoalternate,
          ),
        ),
      ),
    );
  }
}
