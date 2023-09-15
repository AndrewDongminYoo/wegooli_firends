// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class MyProfilePage extends GetWidget<UserController> {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vehicleController = VehicleController.to;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getFriendsTypoAppBar(),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            // height: mediaQueryData.size.height,
            // color: appTheme.amber500,
            child: Column(
              children: [
                MyProfileSection(controller: controller),
                const GrayHorizonSeparator(),
                SizedBox(
                  width: mediaQueryData.size.width,
                  // color: const Color(0xFFFF6F00),
                  child: Column(children: [
                    ListItem(
                        svgPath: Assets.svg.imgEdit.path,
                        text: l10ns.personalInfo,
                        onTap: () {
                          goProfileInfoPage();
                        }),
                    ListItem(
                        svgPath: Assets.svg.imgInformation.path,
                        text: l10ns.subscriptionInformation,
                        onTap: () {
                          if (vehicleController
                                  .subscriptionModel.value.carModel ==
                              null) {
                            goNoSubscription();
                          } else {
                            goUnsubscribeInfo();
                          }
                        }),
                    ListItem(
                        svgPath: Assets.svg.imgCreditCard.path,
                        text: l10ns.cardRegistration,
                        onTap: () {
                          goRegisteredCardList();
                        }),
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
