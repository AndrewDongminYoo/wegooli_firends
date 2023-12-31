// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

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

  @override
  Widget build(BuildContext context) {
    final _birthday = FocusNode();
    final _pinCodes = FocusNode();
    final _complete = FocusNode();
    print(Get.parameters['type']);
    String title;
    if (Get.parameters['type'] == 'edit') {
      title = '카드 수정';
    } else {
      title = l10ns.cardRegistration;
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(title),
      body: UnfocusedForm(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 35, right: 16, bottom: 35),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomInputLabel(labelText: l10ns.cardNumber),
                const CreditCardFormField(),
              ]),
              Padding(
                  padding: getPadding(top: 29),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.expirationDate),
                        const CardExpMonthYearFormField(),
                      ])),
              Padding(
                  padding: getPadding(top: 29),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(
                            labelText: l10ns.socialSecurityNumberFirstDigit),
                        BirthdayNumberFormField(
                          focusNode: _birthday,
                          nextFocus: _pinCodes,
                          readonly: userController.frontNumbers?.length == 6,
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
                          focusNode: _pinCodes,
                          nextFocus: _complete,
                        ),
                      ])),
            ])),
      ),
      bottomNavigationBar: Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: RegisterCardButton(focusNode: _complete),
      ),
    );
  }
}
