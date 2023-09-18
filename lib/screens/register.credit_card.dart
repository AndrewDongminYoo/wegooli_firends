// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterCreditCard extends StatefulWidget {
  const RegisterCreditCard({super.key});

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
      body: Unfocused(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 35, right: 16, bottom: 35),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomInputLabel(labelText: l10ns.cardNumber),
                CreditCardFormField(controller: controller.creditCardNum),
              ]),
              Padding(
                  padding: getPadding(top: 29),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.expirationDate),
                        CardExpMonthYearFormField(
                            controller: controller.creditCardExp),
                      ])),
              Padding(
                  padding: getPadding(top: 29),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(
                            labelText: l10ns.socialSecurityNumberFirstDigit),
                        BirthdayNumberFormField(
                          controller: userController.birthDay,
                          focusNode: birthday,
                          readonly: userController.birthDay.text.isNotEmpty,
                        ),
                      ])),
              Padding(
                  padding: getPadding(top: 29, bottom: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(
                            labelText: l10ns.first2DigitsOfCardPassword),
                        CardPinNumberFormField(
                            controller: controller.creditCardPin),
                      ])),
            ])),
      ),
      bottomNavigationBar: Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        // decoration: AppDecoration.shadow,
        child: RegisterCardButton(controller: controller),
      ),
    );
  }
}
