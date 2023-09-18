// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  final controller = UserController.to;
  UserCredential? user;
  Duration rest = const Duration(minutes: 3);
  String _verificationId = '';
  String? smsCode;
  Timer? _timer;
  String _error = '';
  bool codeSent = false;
  String _min = '';
  String _sec = '';

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

  @override
  void dispose() {
    controller.pinCodes.dispose();
    super.dispose();
  }

  void verificationFailed(Exception error) {
    var title = '전화번호 인증 오류';
    String? output;
    if (error is FirebaseException) {
      output = error.message;
      title = error.code;
      if (error is FirebaseAuthException) {
        if (authExceptions.containsKey(error.code)) {
          output = authExceptions[error.code];
        }
      }
    }
    _error = output ?? '휴대폰 인증과정에서 오류가 발생했습니다.';
    Get.showSnackbar(GetSnackBar(title: title, message: _error));
  }

  Future<AuthCredential?> phoneAuth(String phoneNum) async {
    AuthCredential? phoneCredential;
    final phoneNumber = '+82 ${phoneNum.replaceAll('-', ' ').substring(1)}';
    if (kIsWeb) {
      final confirmationResult = await auth.signInWithPhoneNumber(phoneNumber);
      final smsCode = await getSmsCodeFromUser();
      if (smsCode != null) {
        await confirmationResult.confirm(smsCode);
      }
    } else {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        // Android 기기의 SMS 코드 자동 처리.
        verificationCompleted: (PhoneAuthCredential _credential) {
          print('_credential: $_credential');
          phoneCredential = _credential;
        },
        // 잘못된 전화번호나 SMS 할당량 초과 여부 등의 실패 이벤트
        verificationFailed: verificationFailed,
        // Firebase에서 기기로 코드가 전송된 경우를 처리하며 사용자에게 코드를 입력하라는 메시지를 표시하는 데 사용
        codeSent: (String verificationId, int? resendToken) async {
          print('verificationId: $verificationId');
          print('resendToken: $resendToken');
          final smsCode = await getSmsCodeFromUser();
          _verificationId = verificationId;
          user = await actCodeSent(smsCode, _verificationId);
        },
        // 자동 SMS 코드 처리에 실패한 경우 시간 초과를 처리
        codeAutoRetrievalTimeout: (String verificationId) {
          controller.pinCodes.clear();
          if (_timer != null) {
            _timer!.cancel();
          }
          print('timeout.verificationId: $verificationId');
          Get.showSnackbar(const GetSnackBar(
              title: 'CodeAutoRetrievalTimeout',
              message: '휴대폰 인증과정에서 시간초과가 발생했습니다.'));
        },
      );
    }
    return phoneCredential;
  }

  Future<UserCredential?> actCodeSent(
      String? smsCode, String verificationId) async {
    print('smsCode: $smsCode');
    print('verificationId: $verificationId');
    if (_timer != null) {
      _timer!.cancel();
    }
    if (smsCode != null) {
      // Create a PhoneAuthCredential with the code
      final AuthCredential phoneCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      try {
        // Sign the user in (or link) with the credential
        return auth.signInWithCredential(phoneCredential);
      } on FirebaseAuthException catch (e) {
        verificationFailed(e);
      }
    }
    return null;
  }

  Future<String?> getSmsCodeFromUser() async {
    final seconds = Duration(seconds: rest.inSeconds);
    _timer = Timer.periodic(seconds, (timer) => tick());
    Get.showSnackbar(const GetSnackBar(
        title: '입력한 휴대폰으로 전송된 인증 코드를 확인해주세요.',
        message: '3분내 입력하지 않을 경우 인증코드가 만료됩니다.'));
    if (smsCode == null) {
      setState(() {
        codeSent = true;
        _error = '인증 코드를 입력해주세요';
      });
      return null;
    } else {
      return smsCode;
    }
  }

  void tick() {
    _min = (rest.inSeconds / 60).floor().toString().padLeft(2, '0');
    _sec = (rest.inSeconds % 60).toString().padLeft(2, '0');
    rest = Duration(seconds: rest.inSeconds - 1);
    setState(() {
      if (rest.inSeconds <= 0) {
        _timer!.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    controller.pinCodes.addListener(() {
      if (controller.pinCodes.text.length == 6) {
        smsCode = controller.pinCodes.text;
      }
    });
    return Unfocused(
      child: Padding(
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
                    phoneAuth(controller.phoneNum.text);
                    FocusScope.of(context).unfocus();
                  },
                )),
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
                    padding:
                        getPadding(left: 30, top: 12, right: 10, bottom: 12),
                    child: controller.state == SignUp.WAITING && codeSent
                        ? Text('$_min:$_sec', style: theme.textTheme.labelSmall)
                        : const SizedBox.shrink(),
                  ),
                ),
                CustomElevatedButton(
                    text: l10ns.confirm,
                    width: getHorizontalSize(160),
                    margin: getMargin(top: 10),
                    buttonStyle: CustomButtonStyles.fillPrimaryC5,
                    buttonTextStyle: theme.textTheme.titleMedium,
                    onTap: () async => actCodeSent(smsCode, _verificationId)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
