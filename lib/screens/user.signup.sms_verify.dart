// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

// 🌎 Project imports:
import '/lib.dart';

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
      FirebaseMessaging messaging = FirebaseMessaging.instance;
      messaging.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(top: 6),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomInputLabel(labelText: l10ns.cellPhoneInformation), // '휴대폰 정보'
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TelecomDropdown(controller: widget.controller),
            PhoneNumberFormField(controller: widget.controller),
          ]),
          Row(children: [
            SendAuthCodeButton(controller: widget.controller),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            VerificationCodeFormField(controller: widget.controller),
            VerificationConfirmButton(controller: widget.controller),
          ]),
        ]));
  }
}
