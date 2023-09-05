// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class LoginWithIdAndPassword extends GetWidget<UserController> {
  bool get isAuthenticated => controller.isAuthenticated.value;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: Container(
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FriendsByWegooli(),
              CustomTextFormField(
                  controller: controller.username,
                  textInputType: TextInputType.emailAddress,
                  margin: getMargin(top: 40),
                  contentPadding:
                      getPadding(left: 12, top: 14, right: 12, bottom: 14),
                  textStyle: CustomTextStyles.bodyLargeGray50003,
                  hintText: l10ns.id,
                  hintStyle: CustomTextStyles.bodyLargeGray50003,
                  textInputAction: TextInputAction.next,
                  filled: true,
                  autofocus: true,
                  fillColor: theme.colorScheme.onPrimaryContainer),
              Obx(() => CustomTextFormField(
                  controller: controller.password,
                  margin: getMargin(top: 12),
                  contentPadding:
                      getPadding(left: 12, top: 14, right: 12, bottom: 14),
                  textStyle: CustomTextStyles.bodyLargeGray50003,
                  hintText: l10ns.password,
                  obscureText: controller.isShowPassword.isFalse,
                  hintStyle: CustomTextStyles.bodyLargeGray50003,
                  suffix: Container(
                      margin:
                          getMargin(left: 30, top: 12, right: 10, bottom: 12),
                      child: CustomImageView(
                          svgPath: controller.isShowPassword.value
                              ? Assets.svg.imgEyeOpened.path
                              : Assets.svg.imgEyeCrossedOut.path,
                          onTap: () {
                            controller.isShowPassword.toggle();
                          })),
                  suffixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(48)),
                  filled: true,
                  fillColor: theme.colorScheme.onPrimaryContainer)),
              CustomElevatedButton(
                  text: l10ns.signIn,
                  margin: getMargin(top: 30),
                  buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(52)))),
                  buttonTextStyle: CustomTextStyles.titleMedium18,
                  onTap: onSubmit),
              Padding(
                  padding: getPadding(top: 57),
                  child: Text(l10ns.youHaveNoAccount,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(letterSpacing: getHorizontalSize(0.03)))),
              CustomElevatedButton(
                  text: l10ns.signUp,
                  margin: getMargin(top: 11, bottom: 5),
                  buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(52)))),
                  buttonTextStyle: CustomTextStyles.titleMedium18,
                  onTap: () {
                    // 해당 탭은 dialog로 변경 예정
                    // onTapSignUpAcceptTerms();
                    goPhoneAuth();
                  }),
            ],
          )),
    ));
  }

  void onSubmit() async {
    await controller.authorize();
    if (isAuthenticated) {
      goSharedSchedule();
    } else {
      controller.username.clear();
      controller.password.clear();
    }
  }
}
