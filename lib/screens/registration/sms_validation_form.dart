// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SMSValidationForm extends StatefulWidget {
  final UserController controller;
  const SMSValidationForm({
    super.key,
    required this.controller,
  });
  @override
  State<SMSValidationForm> createState() => _SMSValidationFormState();
}

class _SMSValidationFormState extends State<SMSValidationForm> {
  @override
  Widget build(BuildContext context) {
    List<SelectionPopupModel> telecoms = widget.controller.telecoms;
    return Padding(
        padding: getPadding(top: 6),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomInputLabel(labelText: '휴대폰 정보'),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomDropDown(
                    width: getHorizontalSize(104),
                    icon:
                        Icon(Icons.arrow_drop_down, color: appTheme.gray50003),

                    /// `initialValue`가 `true`인 경우 `hintText`는 보이지 않습니다.
                    hintText: "통신사",
                    initialValue: true,
                    margin: getMargin(top: 4),
                    items: telecoms,
                    filled: true,
                    textStyle: CustomTextStyles.bodyLargeGray500,
                    fillColor: theme.colorScheme.onPrimaryContainer,
                    contentPadding:
                        getPadding(left: 10, right: 5, top: 14, bottom: 14),
                    onChanged: (SelectionPopupModel value) {
                      widget.controller.setDropdownItem(value);
                    }),
                CustomTextFormField(
                    width: getHorizontalSize(216),
                    controller: widget.controller.phoneNum,
                    margin: getMargin(top: 4),
                    textInputType: TextInputType.phone,
                    contentPadding:
                        getPadding(left: 12, right: 12, top: 14, bottom: 14),
                    inputFormatters: [
                      SeperateTextFormatter(
                          sample: 'XXX-XXXX-XXXX', separator: '-'),
                    ],
                    hintText: "010-1234-5678",
                    textStyle: CustomTextStyles.bodyLargeGray50003,
                    hintStyle: CustomTextStyles.bodyLargeGray50003,
                    textInputAction: TextInputAction.next,
                    filled: true,
                    fillColor: theme.colorScheme.onPrimaryContainer),
              ]),
              Row(children: [
                Expanded(
                    child: CustomElevatedButton(
                        onTap: () {
                          widget.controller.sendVerificationCode();
                        },
                        text: "인증번호 발송",
                        margin: getMargin(top: 10),
                        buttonStyle: CustomButtonStyles.fillPrimaryC5.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(double.maxFinite, getVerticalSize(48)))),
                        buttonTextStyle: theme.textTheme.titleMedium!)),
              ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFormField(
                      width: getHorizontalSize(160),
                      autofocus: true,
                      hintText: "000000",
                      controller: widget.controller.pinCodes,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(6),
                      ],
                      margin: getMargin(top: 10),
                      contentPadding: getPadding(left: 14, top: 14, bottom: 14),
                      textStyle: CustomTextStyles.bodyLargeGray500,
                      hintStyle: CustomTextStyles.bodyLargeGray500,
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(48)),
                      filled: true,
                      fillColor: theme.colorScheme.onPrimaryContainer,
                      suffix: Padding(
                        padding: getPadding(
                            left: 30, top: 12, right: 10, bottom: 12),
                        child: Obx(() {
                          bool isWaitingOtpCode =
                              widget.controller.isWaitingOtpCode.value;
                          if (isWaitingOtpCode) {
                            return TimerCountdown(
                              spacerWidth: 0,
                              enableDescriptions: false,
                              colonsTextStyle:
                                  CustomTextStyles.bodyLargeGray50003.copyWith(
                                      letterSpacing: getHorizontalSize(0.03)),
                              timeTextStyle: CustomTextStyles.bodyLargeGray50003
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.03)),
                              format: CountDownTimerFormat.minutesSeconds,
                              endTime:
                                  widget.controller.verificaticonExpireTime(),
                              onEnd: () =>
                                  widget.controller.verificaticonIsExpired(),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        }),
                      ),
                    ),
                    CustomElevatedButton(
                        text: l10ns.confirm,
                        width: getHorizontalSize(160),
                        margin: getMargin(top: 10),
                        buttonStyle: CustomButtonStyles.fillPrimaryC5,
                        buttonTextStyle: theme.textTheme.titleMedium!),
                  ])
            ]));
  }
}
