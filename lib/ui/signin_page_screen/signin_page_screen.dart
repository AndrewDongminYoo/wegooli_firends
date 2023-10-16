// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/signin_page_controller.dart';

// ignore_for_file: must_be_immutable
class SigninPageScreen extends GetWidget<SigninPageController> {
  const SigninPageScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 30.v),
              CustomImageView(
                svgPath: ImageConstant.imgFriendsOnPrimary,
                height: 38.v,
                width: 193.h,
              ),
              SizedBox(height: 97.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'lbl60'.tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.emailinputoneController,
                    hintText: 'lbl61'.tr,
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'lbl62'.tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.passwordinputController,
                    hintText: 'lbl63'.tr,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.only(
                        left: 30.h,
                        top: 7.v,
                        bottom: 8.v,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEyeCrossedOut,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 39.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 48.v,
                text: 'lbl64'.tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                buttonTextStyle: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 60.v),
              Text(
                'lbl65'.tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 10.v),
              Text(
                'lbl66'.tr,
                style: CustomTextStyles.bodySmallBluegray200_1,
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 42.h,
                child: Divider(
                  color: appTheme.blueGray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
