// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/mypage_contact_us_inquiry_history_page/models/userquery_item_model.dart';
import '/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserqueryItemWidget extends StatelessWidget {
  UserqueryItemWidget(
    this.userqueryItemModelObj, {
    Key? key,
  }) : super(key: key);

  UserqueryItemModel userqueryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'msg14'.tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    'lbl_2023_08_23'.tr,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  ),
                ],
              ),
              CustomOutlinedButton(
                height: 28.v,
                width: 52.h,
                text: 'lbl139'.tr,
                margin: EdgeInsets.only(
                  left: 42.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                buttonStyle: CustomButtonStyles.outlineBlueGray,
                buttonTextStyle: CustomTextStyles.bodySmallGray70001,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgArrowrightOnPrimary,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 9.v,
                  bottom: 7.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          const Divider(),
        ],
      ),
    );
  }
}
