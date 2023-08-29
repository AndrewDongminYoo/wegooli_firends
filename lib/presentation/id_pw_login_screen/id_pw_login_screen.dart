import 'controller/id_pw_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IdPwLoginScreen extends GetWidget<IdPwLoginController> {
  const IdPwLoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 73,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup19058,
                height: getVerticalSize(64),
                width: getHorizontalSize(193),
              ),
              CustomTextFormField(
                controller: controller.tfController,
                margin: getMargin(
                  top: 42,
                ),
                hintText: "lbl24".tr,
                hintStyle: CustomTextStyles.bodyLargeGray50003,
              ),
              CustomTextFormField(
                controller: controller.oneController,
                margin: getMargin(
                  top: 12,
                ),
                hintText: "lbl25".tr,
                hintStyle: CustomTextStyles.bodyLargeGray50003,
                textInputAction: TextInputAction.done,
              ),
              CustomElevatedButton(
                text: "lbl26".tr,
                margin: getMargin(
                  top: 30,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgOnprimary13x121,
                height: getVerticalSize(13),
                width: getHorizontalSize(121),
                margin: getMargin(
                  top: 60,
                ),
              ),
              CustomElevatedButton(
                text: "lbl28".tr,
                margin: getMargin(
                  top: 14,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
