// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import 'controller/_controller.dart';
import 'widgets/complete_button.dart';

class ValidatePhone extends GetWidget<ValidatePhoneController> {
  const ValidatePhone({Key? key}) : super(key: key);

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
                            CustomTextFormField(
                                controller: controller.namePromptController,
                                margin: getMargin(top: 4),
                                contentPadding: getPadding(
                                    left: 12, top: 14, right: 12, bottom: 14),
                                textStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                hintStyle: CustomTextStyles.bodyLargeGray50003,
                                hintText: "이름을 입력해주세요.",
                                textInputAction: TextInputAction.next,
                                inputFormatters: [
                                  /// 테스트를 위해 입력할 수 있는 글자를 제한해 봄. 숫자 입력 못하게 함.
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[A-Za-z가-힣ㄱ-ㅎ, ]+'))
                                ],
                                filled: true,
                                fillColor: theme.colorScheme.onPrimaryContainer)
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
                                        "digitOf13SocialSecurityNumber".tr),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextFormField(
                                        width: getHorizontalSize(158),
                                        controller:
                                            controller.age1FormatController,
                                        margin: getMargin(top: 4),
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          FilteringTextInputFormatter
                                              .singleLineFormatter,
                                          LengthLimitingTextInputFormatter(6)
                                        ],
                                        textInputType: TextInputType.number,
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 14,
                                            right: 12,
                                            bottom: 14),
                                        textStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        hintText: "YYMMDD",
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        textInputAction: TextInputAction.next,
                                        filled: true,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    Text("-", style: TextStyle(fontSize: 24)),
                                    CustomTextFormField(
                                        width: getHorizontalSize(158),
                                        controller:
                                            controller.age2FormatController,
                                        margin: getMargin(top: 4),
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 14,
                                            right: 12,
                                            bottom: 14),
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          FilteringTextInputFormatter
                                              .singleLineFormatter,
                                          LengthLimitingTextInputFormatter(7)
                                        ],

                                        /// 특정한 글자를 '*' 대신 사용할 수 있도록 구현 (obscureText가 true인 경우에 한하여 기능이 동작한다.)
                                        obscureChar: '○',
                                        obscureText: true,
                                        textInputType: TextInputType.number,
                                        textStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        hintText: "●●●●●●●",
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        textInputAction: TextInputAction.next,
                                        filled: true,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                  ],
                                ),
                                CustomGuideText(
                                    "subscriptionsAreRestrictedToThoseUnderTheAgeOf26"
                                        .tr),
                              ])),
                      Padding(
                        padding: getPadding(top: 6),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomInputLabel(labelText: '휴대폰 정보'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomDropDown(
                                      width: getHorizontalSize(104),
                                      icon: Icon(Icons.arrow_drop_down,
                                          color: appTheme.gray50003),

                                      /// `initialValue`가 `true`인 경우 `hintText`는 보이지 않습니다.
                                      hintText: "통신사",
                                      initialValue: true,
                                      margin: getMargin(top: 4),
                                      textStyle:
                                          CustomTextStyles.bodyLargeGray500,
                                      items: controller.phoneProviderModelObj
                                          .value.dropdownItemList.value,
                                      filled: true,
                                      fillColor:
                                          theme.colorScheme.onPrimaryContainer,
                                      contentPadding: getPadding(
                                          left: 10,
                                          right: 5,
                                          top: 14,
                                          bottom: 14),
                                      onChanged: (value) {
                                        controller.setDropdownItem(value);
                                      }),
                                  CustomTextFormField(
                                      width: getHorizontalSize(216),
                                      controller:
                                          controller.phoneNumberController,
                                      margin: getMargin(top: 4),
                                      textInputType: TextInputType.phone,
                                      contentPadding: getPadding(
                                          left: 12,
                                          right: 12,
                                          top: 14,
                                          bottom: 14),
                                      textStyle:
                                          CustomTextStyles.bodyLargeGray50003,
                                      inputFormatters: [
                                        SeperateTextFormatter(
                                            sample: 'XXX-XXXX-XXXX',
                                            separator: '-'),
                                      ],
                                      hintText: "010-1234-5678",
                                      hintStyle:
                                          CustomTextStyles.bodyLargeGray50003,
                                      textInputAction: TextInputAction.next,
                                      filled: true,
                                      fillColor:
                                          theme.colorScheme.onPrimaryContainer),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomElevatedButton(
                                          text: "인증번호 발송",
                                          margin: getMargin(top: 10),
                                          buttonStyle: CustomButtonStyles
                                              .fillPrimaryTL5
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              double.maxFinite,
                                                              getVerticalSize(
                                                                  48)))),
                                          buttonTextStyle:
                                              theme.textTheme.titleMedium!)),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextFormField(
                                      width: getHorizontalSize(160),
                                      controller: controller.codeController,
                                      margin: getMargin(top: 10),
                                      contentPadding: getPadding(
                                          left: 10, top: 14, bottom: 14),
                                      textStyle:
                                          CustomTextStyles.bodyLargeGray500,
                                      hintText: "0000",
                                      hintStyle:
                                          CustomTextStyles.bodyLargeGray500,
                                      suffix: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 12,
                                              right: 10,
                                              bottom: 12),
                                          child: Text("3:00",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeGray50003
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(48)),
                                      filled: true,
                                      fillColor:
                                          theme.colorScheme.onPrimaryContainer),
                                  CustomElevatedButton(
                                      text: "확인",
                                      margin: getMargin(top: 10),
                                      buttonStyle: CustomButtonStyles
                                          .fillPrimaryTL5
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(160,
                                                      getVerticalSize(48)))),
                                      buttonTextStyle:
                                          theme.textTheme.titleMedium!),
                                ],
                              )
                            ]),
                      )
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

class CustomGuideText extends StatelessWidget {
  const CustomGuideText(
    text, {
    super.key,
  });
  final String text = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodySmallErrorContainer
                .copyWith(letterSpacing: getHorizontalSize(0.04)))
      ],
    );
  }
}

class CustomInputLabel extends StatelessWidget {
  final bool isRequired;
  final String labelText;
  const CustomInputLabel({
    this.isRequired = true,
    required this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(labelText,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium!
                  .copyWith(letterSpacing: getHorizontalSize(0.03)))),
      Padding(
          padding: getPadding(left: 2, bottom: 5),
          child: (isRequired
              ? Text("*",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall!
                      .copyWith(letterSpacing: getHorizontalSize(0.06)))
              : Text('선택')))
    ]);
  }
}
