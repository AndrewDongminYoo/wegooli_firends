// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/contact_us_inquiry_history_controller.dart';
import '../models/list_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(key: key);

  ListItemModel listItemModelObj;

  ContactUsInquiryHistoryController controller =
      Get.find<ContactUsInquiryHistoryController>();

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
                width: 52.h,
                text: 'lbl139'.tr,
                margin: EdgeInsets.only(
                  left: 42.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgArrowleft,
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
