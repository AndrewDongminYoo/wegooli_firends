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
    required this.focusNode,
    required this.nextFocus,
  });
  final UserController controller;
  final FocusNode focusNode;
  final FocusNode nextFocus;
  @override
  State<SMSValidationForm> createState() => _SMSValidationFormState();
}

class _SMSValidationFormState extends State<SMSValidationForm> {
  final controller = UserController.to;
  UserCredential? user;
  Duration rest = const Duration(minutes: 3);
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

  SnackbarController verificationFailed(Exception error) {
    var title = '전화번호 인증 오류';
    String? output;
    if (error is FirebaseException) {
      output = error.message;
      title = error.code;
      if (error is FirebaseAuthException) {
        if (authExceptions.containsKey(error.code)) {
          output = authExceptions[error.code];
        }
        print('[에러발생]:\n'
            'CODE: ${error.code}\n'
            'MESSAGE: ${error.message}\n'
            'PLUGIN: ${error.plugin}\n'
            'STACK: ${error.stackTrace}');
      }
    }
    _error = output ?? '휴대폰 인증과정에서 오류가 발생했습니다.';
    return Get.showSnackbar(GetSnackBar(
      title: title,
      message: _error,
      duration: const Duration(seconds: 1),
    ));
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
          // ANDROID ONLY!
          phoneCredential = _credential;

          // 자동 생성된 자격 증명으로 사용자를 로그인(또는 링크)합니다.
          auth.signInWithCredential(_credential);
        },
        // 잘못된 전화번호나 SMS 할당량 초과 여부 등의 실패 이벤트
        verificationFailed: verificationFailed,
        // Firebase에서 기기로 코드가 전송된 경우를 처리하며 사용자에게 코드를 입력하라는 메시지를 표시하는 데 사용
        codeSent: (String verificationId, int? resendToken) async {
          codeSent = true;
          print('verificationId: $verificationId');
          print('resendToken: $resendToken');
          final smsCode = await getSmsCodeFromUser();
          // 인증 코드를 사용하여 PhoneAuthCredential을 만듭니다.
          if (smsCode != null) {
            phoneCredential = PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: smsCode);
            // PhoneAuthCredential을 사용하여 사용자를 로그인(또는 링크)합니다.
            try {
              await auth.signInWithCredential(phoneCredential!);
            } on FirebaseException catch (error) {
              verificationFailed(error);
            }
          }
        },
        // 자동 SMS 코드 처리에 실패한 경우 시간 초과를 처리
        codeAutoRetrievalTimeout: (String verificationId) {
          if (_timer != null) {
            _timer!.cancel();
          }
          print('timeout.verificationId: $verificationId');
          Get.showSnackbar(const GetSnackBar(
            title: 'CodeAutoRetrievalTimeout',
            message: '휴대폰 인증과정에서 시간초과가 발생했습니다.',
            duration: Duration(seconds: 1),
          ));
        },
      );
    }
    return phoneCredential;
  }

  Future<String?> getSmsCodeFromUser() async {
    _timer = Timer.periodic(rest, (timer) => tick());
    Get.showSnackbar(GetSnackBar(
      showProgressIndicator: true,
      title: '입력한 휴대폰으로 전송된 인증 코드를 확인해주세요.',
      message: '3분내 입력하지 않을 경우 인증코드가 만료됩니다.',
      duration: rest,
    ));
    if (controller.pinCodes.isNullOrEmpty) {
      setState(() {
        codeSent = true;
        _error = '인증 코드를 입력해주세요';
      });
      return null;
    } else {
      return controller.pinCodes!.trim();
    }
  }

  void tick() {
    setState(() {
      _min = (rest.inSeconds / 60).floor().toString().padLeft(2, '0');
      _sec = (rest.inSeconds % 60).toString().padLeft(2, '0');
      rest = Duration(seconds: rest.inSeconds - 1);
      if (rest.inSeconds <= 0) {
        _timer!.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    return Unfocused(
      child: Padding(
        padding: getPadding(top: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInputLabel(
              labelText: l10ns.cellPhoneInformation,
            ), // '휴대폰 정보'
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TelecomDropdown(),
                PhoneNumberFormField(),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CustomElevatedButton(
                  height: 48.v,
                  width: double.maxFinite,
                  text: l10ns.sendAuthorizationNumber,
                  margin: getMargin(top: 10),
                  buttonStyle: CustomButtonStyles.fillPrimaryC5,
                  buttonTextStyle: theme.textTheme.titleMedium,
                  isLoading: codeSent,
                  onTap: () {
                    phoneAuth(controller.phoneNumWithHyphen!);
                  },
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFormField(
                  focusNode: widget.focusNode,
                  initialValue: controller.pinCodes,
                  onChanged: (String value) {
                    if (value.length >= 6) {
                      setState(() {
                        controller.pinCodes = value;
                        widget.nextFocus.requestFocus();
                      });
                    }
                  },
                  width: 160.h,
                  hintText: '000000',
                  textInputType: TextInputType.phone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  margin: getMargin(top: 10),
                  maxLength: 6,
                  contentPadding: getPadding(left: 14, top: 14, bottom: 14),
                  textStyle: CustomTextStyles.bodyLargeGray500,
                  hintStyle: CustomTextStyles.bodyLargeGray500,
                  autofillHints: const [AutofillHints.oneTimeCode],
                  suffixConstraints: BoxConstraints(maxHeight: 48.v),
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
                  width: 160.h,
                  margin: getMargin(top: 10),
                  buttonStyle: CustomButtonStyles.fillPrimaryC26,
                  buttonTextStyle: CustomTextStyles.titleMedium18,
                  onTap: () async {
                    Get.closeAllSnackbars();
                    await Get.defaultDialog(
                        title: '휴대폰 인증완료', middleText: 'SMS 인증이 완료되었습니다!');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
