import 'controller/side_bar_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';

class SideBarMenuDraweritem extends StatelessWidget {
  SideBarMenuDraweritem(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SideBarMenuController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          height: getVerticalSize(838),
          width: getHorizontalSize(288),
          margin: getMargin(
            left: 72,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: getPadding(
                    top: 48,
                    bottom: 48,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl39".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "lbl_010_1234_5678".tr,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(8),
                        width: getHorizontalSize(288),
                        margin: getMargin(
                          top: 21,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.gray100,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 17,
                        ),
                        child: Text(
                          "lbl9".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 36,
                        ),
                        child: Text(
                          "lbl77".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 35,
                        ),
                        child: Text(
                          "lbl78".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 36,
                          bottom: 36,
                        ),
                        child: Text(
                          "lbl79".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2,
                height: getSize(66),
                width: getSize(66),
                radius: BorderRadius.circular(
                  getHorizontalSize(33),
                ),
                alignment: Alignment.topCenter,
                margin: getMargin(
                  top: 45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
