// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';
import '../widgets/input_label.dart';
import '/core/app_export.dart';

class SMSValidationForm extends StatelessWidget {
  const SMSValidationForm({
    super.key,
    required this.controller,
  });
  final PhoneAuthController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        items: controller
                            .phoneProviderModelObj
                            .value
                            .dropdownItemList
                            .value,
                        filled: true,
                        fillColor: theme
                            .colorScheme.onPrimaryContainer,
                        contentPadding: getPadding(
                            left: 10,
                            right: 5,
                            top: 14,
                            bottom: 14),
                        onChanged:
                            (SelectionPopupModel value) {
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
                        textStyle: CustomTextStyles
                            .bodyLargeGray50003,
                        inputFormatters: [
                          SeperateTextFormatter(
                              sample: 'XXX-XXXX-XXXX',
                              separator: '-'),
                        ],
                        hintText: "010-1234-5678",
                        hintStyle: CustomTextStyles
                            .bodyLargeGray50003,
                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: theme
                            .colorScheme.onPrimaryContainer),
                  ]),
              Row(children: [
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
              ]),
              Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFormField(
                        width: getHorizontalSize(160),
                        controller:
                            controller.pinCodeController,
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
                                overflow:
                                    TextOverflow.ellipsis,
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
                        fillColor: theme
                            .colorScheme.onPrimaryContainer),
                    CustomElevatedButton(
                        text: "확인",
                        width: getHorizontalSize(160),
                        margin: getMargin(top: 10),
                        buttonStyle: CustomButtonStyles
                            .fillPrimaryTL5,
                        buttonTextStyle:
                            theme.textTheme.titleMedium!),
                  ])
            ]));
  }
}
