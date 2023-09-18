// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class MyProfileCardList extends StatefulWidget {
  const MyProfileCardList({super.key});

  @override
  State<MyProfileCardList> createState() => _MyProfileCardListState();
}

class _MyProfileCardListState extends State<MyProfileCardList> {
  final controller = PaymentCardController.to;

  @override
  void initState() {
    controller.retrieveCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // backgroundColor: appTheme.amber500,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            // padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
            child: Column(
              children: [
                Container(
                  // color: appTheme.amber600,
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
                                          groupValue:
                                              paymentCard.defaultYn == 'Y'
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
                  // color: appTheme.amber700,
                  padding: getPadding(top: 20, bottom: 20, left: 16, right: 16),
                  child: const AddCreditCardButton(),
                ),
              ],
            )),
      ),
    );
  }
}