// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterPhone extends StatefulWidget {
  const RegisterPhone({super.key});

  @override
  State<RegisterPhone> createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
  final controller = UserController.to;

  /// 회원가입[1] - 이름, 주민등록번호, 통신사, 핸드폰번호, 인증번호
  TextEditingController realName = TextEditingController(); // 한국이름
  TextEditingController birthDay = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController phoneNum = TextEditingController();
  TextEditingController pinCodes = TextEditingController();

  bool get phoneAuthCompleted =>
      realName.text.isNotEmpty &&
      birthDay.text.isNotEmpty &&
      isNumeric(birthDay.text) &&
      socialId.text.isNotEmpty &&
      isNumeric(socialId.text) &&
      phoneNum.text.isNotEmpty &&
      isValidPhone(phoneNum.text) &&
      pinCodes.text.isNotEmpty &&
      isNumeric(pinCodes.text) &&
      pinCodes.text.length == 6;

  @override
  Widget build(BuildContext context) {
    final _nameText = FocusNode();
    final _birthday = FocusNode();
    final _socialId = FocusNode();
    print('controller.phoneAuthCompleted $phoneAuthCompleted');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.authenticateYourself),
      body: Unfocused(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomInputLabel(labelText: l10ns.name),
                KoreanNameFormField(
                  focusNode: _nameText,
                ),
              ]),
              Padding(
                  padding: getPadding(top: 26, bottom: 7),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(
                            labelText: l10ns.digitOf13SocialSecurityNumber),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BirthdayNumberFormField(
                                focusNode: _birthday,
                                readonly: false,
                              ),
                              const Text('-', style: TextStyle(fontSize: 24)),
                              SocialSecurityNumberFormField(
                                focusNode: _socialId,
                              ),
                            ]),
                        Row(children: [
                          Text(
                            l10ns
                                .subscriptionsAreRestrictedToThoseUnderTheAgeOf26,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallErrorContainer
                                .copyWith(letterSpacing: 0.04.h),
                          ),
                        ])
                      ])),
              SMSValidationForm(controller: controller),
            ])),
      ),
      // ValidatePhoneCompleteButton
      bottomNavigationBar: Container(
          margin: getMargin(left: 16, right: 16, bottom: 29),
          child: CustomElevatedButton(
            text: l10ns.authenticationComplete, // '인증 완료'
            isDisabled: !phoneAuthCompleted,
            buttonStyle: phoneAuthCompleted
                ? CustomButtonStyles.fillPrimaryC26
                : CustomButtonStyles.fillAmberA200C5,
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: goRegisterZipCode,
          )),
    );
  }
}
