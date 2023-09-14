// 🐦 Flutter imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart' hide User;

/// true로 설정하면 앱에서 리캡차 대신 SMS MFA에 대한
/// 자동 인증을 사용할 수 있도록 알림 권한을 요청합니다.
const withSilentVerificationSMSMFA = true;

class SMSValidationForm extends StatefulWidget {
  const SMSValidationForm({
    super.key,
    required this.controller,
  });
  final UserController controller;
  @override
  State<SMSValidationForm> createState() => _SMSValidationFormState();
}

class _SMSValidationFormState extends State<SMSValidationForm> {
  String error = '';

  @override
  void initState() {
    super.initState();
    if (withSilentVerificationSMSMFA && !kIsWeb) {
      /// 사용자에게 alert 권한을 요청하는 메시지를 표시합니다.
      ///
      ///  - iOS에서는 사용자에게 권한을 요청하는 대화 상자가 표시됩니다.
      ///  - macOS에서는 권한을 부여할지 묻는 alert이 표시됩니다.
      ///  - Android에서는 [NotificationSettings] 클래스가 반환되며, [NotificationSettings] 클래스의
      ///    [authorizationStatus]의 값과 함께 반환됩니다.
      ///    시스템 설정에서 앱의 alert이 활성화되어 있는지 또는 차단되어 있는지를 나타냅니다.
      ///  - 웹에서는 네이티브 브라우저 API를 사용하여 사용자에게 권한을 요청하는 팝업이 표시됩니다.
      FirebaseMessaging.instance.requestPermission();
    }
  }

  StreamBuilder<User?> handleAuth() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return SharedCalendar();
          } else {
            return LoginWithIdAndPassword();
          }
        });
  }

  //Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  //SignIn
  signIn(AuthCredential authCreds) {
    FirebaseAuth.instance.signInWithCredential(authCreds);
  }

  signInWithOTP(smsCode, verId) {
    AuthCredential authCreds =
        PhoneAuthProvider.credential(verificationId: verId, smsCode: smsCode);
    signIn(authCreds);
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    return Padding(
      padding: getPadding(top: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInputLabel(
            labelText: l10ns.cellPhoneInformation,
          ), // '휴대폰 정보'
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TelecomDropdown(controller: widget.controller),
              PhoneNumberFormField(controller: widget.controller),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: CustomElevatedButton(
                      height: getVerticalSize(48),
                      width: double.maxFinite,
                      text: l10ns.sendAuthorizationNumber,
                      margin: getMargin(top: 10),
                      buttonStyle: CustomButtonStyles.fillPrimaryC5,
                      buttonTextStyle: theme.textTheme.titleMedium,
                      onTap: () {
                        controller.sendVerificationCode();
                        FocusScope.of(context).unfocus();
                      })),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                width: getHorizontalSize(160),
                hintText: '000000',
                controller: controller.pinCodes,
                textInputType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(6),
                ],
                margin: getMargin(top: 10),
                contentPadding: getPadding(left: 14, top: 14, bottom: 14),
                textStyle: CustomTextStyles.bodyLargeGray500,
                hintStyle: CustomTextStyles.bodyLargeGray500,
                autofillHints: const [AutofillHints.oneTimeCode],
                suffixConstraints:
                    BoxConstraints(maxHeight: getVerticalSize(48)),
                filled: true,
                fillColor: Colors.white,
                suffix: Padding(
                  padding: getPadding(left: 30, top: 12, right: 10, bottom: 12),
                  child: Obx(() {
                    final isWaitingOtpCode =
                        controller.oneTimeCode == Verify.Waiting;
                    if (isWaitingOtpCode) {
                      return TimerCountdown(
                        spacerWidth: 0,
                        enableDescriptions: false,
                        colonsTextStyle: CustomTextStyles.bodyLargeGray50003
                            .copyWith(letterSpacing: getHorizontalSize(0.03)),
                        timeTextStyle: CustomTextStyles.bodyLargeGray50003
                            .copyWith(letterSpacing: getHorizontalSize(0.03)),
                        format: CountDownTimerFormat.minutesSeconds,
                        endTime: controller.verificaticonExpireTime(),
                        onEnd: controller.verificaticonIsExpired,
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
                  buttonTextStyle: theme.textTheme.titleMedium,
                  onTap: () async {
                    print(
                        'VerificationConfirmButton ${controller.phoneAuthCompleted}');
                    if (controller.phoneAuthCompleted) {
                      Get.showSnackbar(const GetSnackBar(
                          title: 'OTP 인증',
                          message: 'OTP 코드 인증에 성공했습니다!',
                          duration: Duration(seconds: 5),
                          backgroundColor: ColorConstant.fontBlack,
                          icon: Icon(
                            Icons.message_rounded,
                            color: Colors.white,
                          )));
                    }
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
