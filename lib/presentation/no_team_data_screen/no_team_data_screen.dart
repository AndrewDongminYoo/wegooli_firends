import 'controller/no_team_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_2.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NoTeamDataScreen extends GetWidget<NoTeamDataController> {
  const NoTeamDataScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          centerTitle: true,
          title: AppbarImage2(
            svgPath: ImageConstant.imgFriends,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 30,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: getVerticalSize(177),
                    width: getHorizontalSize(120),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "lbl90".tr,
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl91".tr,
                    margin: getMargin(
                      top: 21,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: getMargin(
                        top: 40,
                      ),
                      padding: getPadding(
                        left: 14,
                        top: 10,
                        right: 14,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder33,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgContactsupport,
                            height: getSize(30),
                            width: getSize(30),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                              bottom: 3,
                            ),
                            child: Text(
                              "lbl16".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
