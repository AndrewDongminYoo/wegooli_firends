// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisteredCreditCardList extends StatefulWidget {
  const RegisteredCreditCardList({super.key});

  @override
  State<RegisteredCreditCardList> createState() =>
      _RegisteredCreditCardListState();
}

class _RegisteredCreditCardListState extends State<RegisteredCreditCardList> {
  final controller = PaymentCardController.to;

  @override
  void initState() {
    controller.retrieveCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: theme.colorScheme.onPrimaryContainer,
      // backgroundColor: const Color(0xFFFFC107),
      appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
      body: SizedBox(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          // padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
          child: Column(
            children: [
              Container(
                // color: const Color(0xFFFFB300),
                padding: getPadding(top: 20, bottom: 20, left: 16, right: 16),
                child: Column(children: [
                  Obx(
                    () => ListView.builder(
                        itemBuilder: (_, int index) {
                          final paymentCard = controller.paymentCards[index];
                          return Padding(
                              padding: getPadding(bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomRadioButton(
                                        text: paymentCard.cardNumber ?? 'dd',
                                        iconSize: getHorizontalSize(20),
                                        value: paymentCard.cardNumber ?? 'dd',
                                        groupValue: paymentCard.defaultYn == 'Y'
                                            ? paymentCard.cardNumber
                                            : controller.selected.value,
                                        textStyle: theme.textTheme.bodyLarge,
                                        onChange: (String value) {
                                          // print(
                                          //     'first option selected : $value');
                                          controller.selected.value = value;
                                        }),
                                    CustomImageView(
                                        svgPath: Assets.svg.imgClose.path,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(top: 1, bottom: 1)),
                                  ]));
                        },
                        itemCount: controller.paymentCards.length,
                        shrinkWrap: true),
                  ),
                ]),
              ),
              Container(
                // color: const Color(0xFFFFA000),
                padding: getPadding(top: 20, bottom: 20, left: 16, right: 16),
                child: const AddCreditCardButton(),
              ),
            ],
          )),
    ));
  }
}
