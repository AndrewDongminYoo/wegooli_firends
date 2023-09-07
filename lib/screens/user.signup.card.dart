// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterCreditCard extends StatefulWidget {

  RegisterCreditCard({super.key});

  @override
  State<RegisterCreditCard> createState() => _RegisterCreditCardState();
}

class _RegisterCreditCardState extends State<RegisterCreditCard> {
  final controller = PaymentCardController.to;

  final userController = UserController.to;

  final birthday = FocusNode();

  final cardNums = FocusNode();

  final cardPins = FocusNode();

  final expMonth = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 16, top: 35, right: 16, bottom: 35),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomInputLabel(labelText: l10ns.cardNumber),
                  CreditCardFormField(controller: controller)
                ]),
            Padding(
                padding: getPadding(top: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(labelText: l10ns.expirationDate),
                      CardExpMonthYearFormField(controller: controller)
                    ])),
            Padding(
                padding: getPadding(top: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(
                          labelText: l10ns.socialSecurityNumberFirstDigit),
                      BirthdayNumberFormField(
                        controller: userController,
                        focusNode: birthday,
                        readonly: !userController.birthDay.text.isEmpty,
                      )
                    ])),
            Padding(
                padding: getPadding(top: 29, bottom: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomInputLabel(
                          labelText: l10ns.first2DigitsOfCardPassword),
                      CardPinNumberFormField(controller: controller)
                    ]))
          ])),
      bottomNavigationBar: Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        // decoration: AppDecoration.shadow,
        child: CustomElevatedButton(
            // TODO disabled 일때 스타일 정의하기
            text: l10ns.register,
            buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
              Size(
                double.maxFinite,
                getVerticalSize(52),
              ),
            )),
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: () async {
              // TODO 카드 검증 필요함.
              await controller.registerCard();
              if (controller.paymentCards.isEmpty) {
                goRegisterSuccess();
              } else {
                // TODO 카드 등록 로직
                goBack();
              }
            }),
      ),
    ));
  }
}
