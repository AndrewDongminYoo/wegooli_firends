// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:kpostal/kpostal.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterZipCode extends GetWidget<UserController> {
  const RegisterZipCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.signUp),
      body: SingleChildScrollView(

          // width: double.maxFinite,
          padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Padding(
                  padding: getPadding(right: 4),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.homeAddress),
                        PostCodeFormField(controller: controller)
                      ]),
                ),
              ),
              Expanded(
                  child: CustomElevatedButton(
                      text: l10ns.addressSearch,
                      margin: getMargin(left: 4, top: 27),
                      buttonStyle: CustomButtonStyles.fillPrimaryC5.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                        Size(
                          double.maxFinite,
                          getVerticalSize(48),
                        ),
                      )),
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => KpostalView(
                                useLocalServer: true,
                                localPort: 1024,
                                callback: (Kpostal result) {
                                  controller.postCode.text = result.postCode;
                                  controller.primaryAddress.text =
                                      result.address;
                                }),
                          ),
                        );
                      }))
            ]),
            PrimaryAddressFormField(controller: controller),
            DetailAddressFormField(controller: controller),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(labelText: l10ns.id),
                      EmailAddressFormField0(controller: controller)
                    ])),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(labelText: l10ns.password),
                      PasswordFormField(controller: controller, authMode: AuthMode.register),
                    ])),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(labelText: l10ns.confirmPassword),
                      PasswordConfirmFormField(controller: controller),
                    ])),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(labelText: l10ns.nickname),
                      NickNameFormField(controller: controller),
                    ]))
          ])),
      bottomNavigationBar: Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        // decoration: AppDecoration.shadow,
        child: CustomElevatedButton(
            text: l10ns.filledIn,
            // TODO disabled일 때 스타일 정의하기
            // isDisabled: !controller.isValid,
            buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
              Size(
                double.maxFinite,
                getVerticalSize(52),
              ),
            )),
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: () {
              if (controller.isValid) {
                goRegisterLicense();
              }
            }),
      ),
    ));
  }
}
