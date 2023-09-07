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
    var row = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(
            l10ns.confirmPassword,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium!.copyWith(
              letterSpacing: getHorizontalSize(0.03),
            ),
          )),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text(
            "*",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall!.copyWith(
              letterSpacing: getHorizontalSize(0.06),
            ),
          ))
    ]);
    var row2 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(
            l10ns.password,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium!.copyWith(
              letterSpacing: getHorizontalSize(0.03),
            ),
          )),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text(
            "*",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall!.copyWith(
              letterSpacing: getHorizontalSize(0.06),
            ),
          ))
    ]);
    var row3 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(
            l10ns.id,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium!.copyWith(
              letterSpacing: getHorizontalSize(0.03),
            ),
          )),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text(
            "*",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall!.copyWith(
              letterSpacing: getHorizontalSize(0.06),
            ),
          ))
    ]);
    var row4 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(
            l10ns.homeAddress,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium!.copyWith(
              letterSpacing: getHorizontalSize(0.03),
            ),
          )),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text(
            "*",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall!.copyWith(
              letterSpacing: getHorizontalSize(0.06),
            ),
          ))
    ]);
    var row5 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(
            l10ns.nickname,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium!.copyWith(
              letterSpacing: getHorizontalSize(0.03),
            ),
          )),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text(
            "*",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall!.copyWith(
              letterSpacing: getHorizontalSize(0.06),
            ),
          ))
    ]);
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
                        row4,
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
                      row3,
                      EmailAddressFormField0(controller: controller)
                    ])),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      row2,
                      PasswordInputFormField(controller: controller),
                    ])),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      row,
                      PasswordConfirmFormField(controller: controller),
                    ])),
            Padding(
                padding: getPadding(top: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      row5,
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
