// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

// 🌎 Project imports:
import '/lib.dart';

/// true로 설정하면 앱에서 리캡차 대신 SMS MFA에 대한
/// 자동 인증을 사용할 수 있도록 알림 권한을 요청합니다.
const withSilentVerificationSMSMFA = true;

class SMSValidationFormScreen extends StatefulWidget {
  const SMSValidationFormScreen({
    super.key,
    this.focusNode,
    required this.controller,
  });
  final UserController controller;
  final FocusNode? focusNode;
  @override
  State<SMSValidationFormScreen> createState() =>
      _SMSValidationFormScreenState();
}

class _SMSValidationFormScreenState extends State<SMSValidationFormScreen> {
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

  @override
  Widget build(BuildContext context) {
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
              SendAuthCodeButton(controller: widget.controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VerificationCodeFormField(controller: widget.controller),
              VerificationConfirmButton(controller: widget.controller),
            ],
          ),
        ],
      ),
    );
  }
}
