// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MyProfilePage extends StatelessWidget {
  final ConnectionController controller = ConnectionController.to;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getFriendsTypoAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                // color: Colors.amber,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.amber[600],
                        height: getVerticalSize(105),
                        padding: getPadding(
                            top: 20, bottom: 20, left: 16, right: 16),
                        child: Row(
                          children: [
                            CustomImageView(
                                margin: getMargin(right: 16),
                                imagePath: Assets.images.imgAvatar5.path,
                                height: getSize(65),
                                width: getSize(65),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(40))),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('닉네임',
                                    // overflow: TextOverflow.ellipsis,
                                    // textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.04))),
                                Text('010-1234-5678',
                                    // overflow: TextOverflow.ellipsis,
                                    // textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.03))),
                                Text('abc@gmail.com',
                                    // overflow: TextOverflow.ellipsis,
                                    // textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.03))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(8),
                        width: mediaQueryData.size.width,
                        color: Color.fromRGBO(246, 247, 247, 1),
                      ),
                      Container(
                        width: mediaQueryData.size.width,
                        // color: Colors.amber[900],
                        child: Column(children: [
                          ListItem(
                              svgPath: Assets.svg.imgEdit.path,
                              text: '개인 정보',
                              onTap: () {
                                Get.toNamed(AppRoutes.profileInfoPage);
                              }),
                          ListItem(
                              svgPath: Assets.svg.imgInformation.path,
                              text: '구독 정보',
                              onTap: () {
                                Get.toNamed(AppRoutes.upcomingUnsubscription +
                                    "_outlined");
                              }),
                          ListItem(
                              svgPath: Assets.svg.imgCreditCard.path,
                              text: '카드 등록',
                              onTap: () {
                                Get.toNamed(AppRoutes.registeredCardList);
                              }),
                        ]),
                      ),
                    ]))));
  }
}
