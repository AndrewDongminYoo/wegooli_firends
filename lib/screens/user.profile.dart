// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MyProfilePage extends GetWidget<UserController> {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vehicleController = VehicleController.to;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar.getFriendsTypoAppBar(),
        body: Unfocused(
          child: SizedBox(
              width: mediaQueryData.size.width,
              // height: mediaQueryData.size.height,
              // color: const Color(0xFFFFC107),
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
      ),
    );
  }
}

class MyProfileSection extends StatelessWidget {
  const MyProfileSection({
    super.key,
    required this.controller,
  });
  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xFFFFB300),
      height: getVerticalSize(105),
      padding: getPadding(top: 20, bottom: 20, left: 16, right: 16),
      child: Row(
        children: [
          CustomImageView(
            margin: getMargin(right: 16),
            imagePath: Assets.images.imgAvatar1.path,
            height: getSize(65),
            width: getSize(65),
            radius: BorderRadius.circular(40),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(bottom: 5),
                child: Text(
                  controller.currentUser.nickname!,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                    letterSpacing: 0.03,
                  ),
                ),
              ),
              Text(
                controller.currentUser.phoneNumber!,
                style: TextStyle(
                  color: Color(0x66222222),
                  fontSize: 12,
                  fontFamily: FontFamily.pretendard,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: 0.02,
                ),
              ),
              Text(
                controller.currentUser.email!,
                style: TextStyle(
                  color: Color(0x66222222),
                  fontSize: 10,
                  fontFamily: FontFamily.pretendard,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: 0.02,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
