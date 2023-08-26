import 'controller/my_profile_controller.dart';
import 'models/my_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_icon_button.dart';

class MyProfilePage extends StatelessWidget {
  MyProfilePage({Key? key})
      : super(
          key: key,
        );

  MyProfileController controller =
      Get.put(MyProfileController(MyProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          leadingWidth: getHorizontalSize(104),
          leading: AppbarImage(
            svgPath: ImageConstant.imgFriends,
            margin: getMargin(
              left: 16,
              top: 14,
              bottom: 14,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgMenuOnprimary,
              margin: getMargin(
                left: 9,
                top: 13,
                right: 9,
                bottom: 12,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 30,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getSize(80),
                    width: getSize(80),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse280x80,
                          height: getSize(80),
                          width: getSize(80),
                          radius: BorderRadius.circular(
                            getHorizontalSize(40),
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomIconButton(
                          height: getSize(25),
                          width: getSize(25),
                          padding: getPadding(
                            all: 4,
                          ),
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCameraBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 17,
                    ),
                    child: Text(
                      "lbl39".tr,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "lbl_010_1234_5678".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(8),
                    width: double.maxFinite,
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
                      top: 15,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgEdit,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 2,
                          ),
                          child: Text(
                            "lbl80".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleftOnprimary,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 30,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgInformation,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 2,
                          ),
                          child: Text(
                            "lbl81".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleftOnprimary,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 30,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMenuOnprimary,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 2,
                          ),
                          child: Text(
                            "lbl51".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleftOnprimary,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 30,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSettings,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 2,
                          ),
                          child: Text(
                            "lbl79".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleftOnprimary,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
