// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(height: getVerticalSize(53), leadingWidth: 34),
            backgroundColor: theme.colorScheme.primary,
            body: Container(
                width: mediaQueryData.size.width,
                padding: getPadding(left: 81, top: 169, right: 81),
                child: Column(
                  children: [
                    const FriendsByWegooli(),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: getVerticalSize(44)),
                        width: Get.width,
                        child: CustomImageView(
                          onTap: () {
                            goIdPwLogin();
                          },
                          imagePath: Assets.images.imgGooli1.path,
                          fit: BoxFit.fitWidth,
                          height: getVerticalSize(93),
                          width: getHorizontalSize(166),
                        ))
                  ],
                ))));
  }
}
