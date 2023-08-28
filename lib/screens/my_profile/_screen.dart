// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import 'controller/_controller.dart';

class MyProfilePage extends StatelessWidget {
  final MyProfileController controller = MyProfileController.to;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                centerTitle: true,
                title: CustomImageView(
                    height: getVerticalSize(17),
                    width: getHorizontalSize(88),
                    svgPath: Assets.svg.imgFriendsTypo.path),
                styleType: Style.bgOutline),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: Assets.images.imgAvatar5.path,
                          height: getSize(80),
                          width: getSize(80),
                          radius: BorderRadius.circular(getHorizontalSize(40))),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text(l10ns.nickname,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.04)))),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text(controller.phoneNumber.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                  letterSpacing: getHorizontalSize(0.03)))),
                      Container(
                          height: getVerticalSize(8),
                          width: double.maxFinite,
                          margin: getMargin(top: 31),
                          decoration: BoxDecoration(color: appTheme.gray100)),
                      Padding(
                          padding: getPadding(left: 14, top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: Assets.svg.imgCreditCard.path,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 2, bottom: 1),
                                    child: Text(l10ns.subscriptionInformation,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03)))),
                                Spacer(),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 3, bottom: 3)),
                              ])),
                      Padding(
                          padding: getPadding(left: 14, top: 15, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: Assets.svg.imgCreditCard.path,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 2, bottom: 1),
                                    child: Text(l10ns.cardRegistration,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03)))),
                                Spacer(),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 3, bottom: 3)),
                              ])),
                    ]))));
  }
}
