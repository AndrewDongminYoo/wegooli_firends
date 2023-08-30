// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ValidatePhone extends GetWidget<PhoneAuthController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: CustomImageView(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "본인 인증")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomInputLabel(labelText: "이름"),
                            NameTextInput(controller: controller)
                          ]),
                      Padding(
                          padding: getPadding(top: 26, bottom: 7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText:
                                        l10ns.digitOf13SocialSecurityNumber),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Birthday6NumberInput(
                                          controller: controller),
                                      Text("-", style: TextStyle(fontSize: 24)),
                                      SocialSecurity7NumberInput(
                                          controller: controller),
                                    ]),
                                CustomGuideText(
                                    text: l10ns
                                        .subscriptionsAreRestrictedToThoseUnderTheAgeOf26),
                              ])),
                      SMSValidationForm(controller: controller)
                    ])),
            bottomNavigationBar: ValidatePhoneCompleteButton()));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}

class SocialSecurity7NumberInput extends StatelessWidget {
  const SocialSecurity7NumberInput({
    super.key,
    required this.controller,
  });

  final PhoneAuthController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        width: getHorizontalSize(158),
        controller: controller.socialId,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.singleLineFormatter,
          LengthLimitingTextInputFormatter(7)
        ],

        /// 특정한 글자를 '*' 대신 사용할 수 있도록 구현 (obscureText가 true인 경우에 한하여 기능이 동작한다.)
        obscureChar: '○',
        obscureText: true,
        textInputType: TextInputType.number,
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: "●●●●●●●",
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}

class Birthday6NumberInput extends StatelessWidget {
  const Birthday6NumberInput({
    super.key,
    required this.controller,
  });

  final PhoneAuthController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        width: getHorizontalSize(158),
        controller: controller.birthDay,
        margin: getMargin(top: 4),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.singleLineFormatter,
          LengthLimitingTextInputFormatter(6)
        ],
        textInputType: TextInputType.number,
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: "YYMMDD",
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}

class NameTextInput extends StatelessWidget {
  const NameTextInput({
    super.key,
    required this.controller,
  });

  final PhoneAuthController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller.fullName,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: "이름을 입력해주세요.",
        textInputAction: TextInputAction.next,
        inputFormatters: [
          /// 테스트를 위해 입력할 수 있는 글자를 제한해 봄. 숫자 입력 못하게 함.
          FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z가-힣ㄱ-ㅎ, ]+'))
        ],
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
