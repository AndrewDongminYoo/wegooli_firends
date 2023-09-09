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
    required this.controller,
    required FocusNode focusNode,
  });
  final UserController controller;
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
    List<SelectionPopupModel> telecoms = widget.controller.telecoms;
    return Padding(
        padding: getPadding(top: 6),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomInputLabel(labelText: l10ns.cellPhoneInformation),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomDropDown(
                    width: getHorizontalSize(104),
                    icon:
                        Icon(Icons.arrow_drop_down, color: appTheme.gray50003),

                    /// `initialValue`가 `true`인 경우 `hintText`는 보이지 않습니다.
                    hintText: l10ns.telecomCarrier,
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
                PhoneNumberFormField(controller: widget.controller),
              ]),
              Row(children: [
                Expanded(
                    child: CustomElevatedButton(
                        onTap: () {
                          widget.controller.sendVerificationCode();
                        },
                        text: l10ns.sendAuthorizationNumber,
                        margin: getMargin(top: 10),
                        buttonStyle: CustomButtonStyles.fillPrimaryC5.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                          Size(
                            double.maxFinite,
                            getVerticalSize(48),
                          ),
                        )),
                        buttonTextStyle: theme.textTheme.titleMedium!)),
              ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VerificationCodeFormField(controller: widget.controller),
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
