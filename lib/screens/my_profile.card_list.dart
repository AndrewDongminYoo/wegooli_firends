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
    super.initState();
    controller.retrieveCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            child: Column(
              children: [
                Container(
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
                                          iconSize: 20.h,
                                          value: paymentCard.cardNumber ?? 'dd',
                                          groupValue:
                                              paymentCard.defaultYn == 'Y'
                                                  ? paymentCard.cardNumber
                                                  : controller.selected.value,
                                          textStyle: theme.textTheme.bodyLarge,
                                          onChange: (String value) {
                                            controller.selected.value = value;
                                          }),
                                      CustomImageView(
                                          svgPath: Assets.svg.imgClose.path,
                                          height: 18.adaptSize,
                                          width: 18.adaptSize,
                                          margin: getMargin(top: 1, bottom: 1)),
                                    ]));
                          },
                          itemCount: controller.paymentCards.length,
                          shrinkWrap: true),
                    ),
                  ]),
                ),
                Container(
                  padding: getPadding(top: 20, bottom: 20, left: 16, right: 16),
                  child: CustomElevatedButton(
                    text: l10ns.cardAdditions,
                    buttonStyle: CustomButtonStyles.fillPrimaryC26,
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                    onTap: addMoreCreditCard,
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
