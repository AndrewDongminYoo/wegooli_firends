// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';

// 🌎 Project imports:
import '/lib.dart';
import '/main.dart';

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
  Future<void> phoneAuth() async {
    if (kIsWeb) {
      final confirmationResult =
          await auth.signInWithPhoneNumber(widget.controller.phoneNum.text);
      final smsCode = await widget.controller.sendVerificationCode();
      if (smsCode != null) {
        await confirmationResult.confirm(smsCode);
      }
    } else {
      await auth.verifyPhoneNumber(
        phoneNumber: widget.controller.phoneNum.text,
        verificationCompleted: (_) {},
        verificationFailed: (e) {
          setState(() {
            error = '${e.message}';
          });
        },
        codeSent: (String verificationId, int? resendToken) async {
          final smsCode = await widget.controller.sendVerificationCode();
          if (smsCode != null) {
            // Create a PhoneAuthCredential with the code
            final credential = PhoneAuthProvider.credential(
              verificationId: verificationId,
              smsCode: smsCode,
            );
            try {
              // Sign the user in (or link) with the credential
              await auth.signInWithCredential(credential);
            } on FirebaseAuthException catch (e) {
              setState(() {
                error = e.message ?? '';
              });
            }
          }
        },
        codeAutoRetrievalTimeout: (e) {
          setState(() {
            error = e;
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(top: 6),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomInputLabel(labelText: l10ns.cellPhoneInformation),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TelecomDropdown(controller: widget.controller),
            PhoneNumberFormField(controller: widget.controller),
          ]),
          Row(children: [
            SendAuthCodeButton(controller: widget.controller),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            VerificationCodeFormField(controller: widget.controller),
            const VerificationConfirmButton(),
          ]),
        ]));
  }
}
