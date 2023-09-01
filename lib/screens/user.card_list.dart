// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisteredCreditCardList extends StatefulWidget {
  @override
  State<RegisteredCreditCardList> createState() =>
      _RegisteredCreditCardListState();
}

class _RegisteredCreditCardListState extends State<RegisteredCreditCardList> {
  final paymentCardController = PaymentCardController.to;

  @override
  void initState() {
    paymentCardController.retrieveCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            // backgroundColor: theme.colorScheme.onPrimaryContainer,
            backgroundColor: Colors.amber,
            appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                // padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.amber[600],
                        padding: getPadding(
                            top: 20, bottom: 20, left: 16, right: 16),
                        child: Column(children: [
                          Obx(
                            () => ListView.builder(
                                itemBuilder: (_, int index) {
                                  final paymentCard =
                                      paymentCardController.paymentCards[index];
                                  return Padding(
                                      padding: getPadding(bottom: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomRadioButton(
                                                text: paymentCard.cardNumber ??
                                                    'dd',
                                                iconSize: getHorizontalSize(20),
                                                value: paymentCard.cardNumber ??
                                                    'dd',
                                                groupValue:
                                                    paymentCard.defaultYn == 'Y'
                                                        ? paymentCard.cardNumber
                                                        : paymentCardController
                                                            .selected.value,
                                                textStyle:
                                                    theme.textTheme.bodyLarge!,
                                                onChange: (String value) {
                                                  // print(
                                                  //     'first option selected : $value');
                                                  paymentCardController
                                                      .selected.value = value;
                                                }),
                                            CustomImageView(
                                                svgPath:
                                                    Assets.svg.imgClose.path,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                          ]));
                                },
                                itemCount:
                                    paymentCardController.paymentCards.length,
                                shrinkWrap: true),
                          )
                        ]),
                      ),
                      Container(
                        color: Colors.amber[700],
                        padding: getPadding(
                            top: 20, bottom: 20, left: 16, right: 16),
                        child: CustomElevatedButton(
                            text: '카드 추가',
                            // margin: getMargin(top: 30, bottom: 20),
                            buttonStyle: CustomButtonStyles.fillPrimaryC26
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(double.maxFinite,
                                            getVerticalSize(52)))),
                            buttonTextStyle: CustomTextStyles.titleMedium18,
                            onTap: () {
                              Get.toNamed(AppRoutes.registerCreditCard);
                            }),
                      ),
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
