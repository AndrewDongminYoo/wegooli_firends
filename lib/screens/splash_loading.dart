// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.wegooli,
      body: Unfocused(
        child: Container(
          width: mediaQueryData.size.width,
          padding: getPadding(left: 81, top: 169, right: 81),
          child: Column(
            children: [
              const FriendsByWegooli(),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 44.v),
                  width: Get.width,
                  child: CustomImageView(
                    onTap: goIdPwLogin,
                    imagePath: Assets.images.imgGooli1.path,
                    fit: BoxFit.fitWidth,
                    height: 93.v,
                    width: 166.h,
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
