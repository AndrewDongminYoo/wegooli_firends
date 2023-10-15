import '../models/listview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore: must_be_immutable
class ListviewItemWidget extends StatelessWidget {
  ListviewItemWidget(
    this.listviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListviewItemModel listviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        decoration: AppDecoration.shadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75.v,
              width: 9.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10.h),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listviewItemModelObj.Txt!,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "msg_8_16_15_20".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgOverflowmenuvertical,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 27.h,
                top: 6.v,
                bottom: 51.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}