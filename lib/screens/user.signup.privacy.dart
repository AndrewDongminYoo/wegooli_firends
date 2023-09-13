// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ProfileInfoPage extends GetWidget<UserController> {
  const ProfileInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.myInfo),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            // color: const Color(0xFFFFC107),
            child: Column(
              children: [
                Container(
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
                              controller.currentUser.value.nickname ??
                                  l10ns.nickname,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16,
                                fontFamily: FontFamily.pretendard,
                                fontWeight: FontWeight.w700,
                                height: 1.50,
                                letterSpacing: 0.03,
                              ),
                            ),
                          ),
                          Text(
                            controller.currentUser.value.phoneNumber ??
                                '010-1234-5678',
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
                            controller.currentUser.value.email ??
                                'abc@gmail.com',
                            style: TextStyle(
                              color: Color(0x66222222),
                              fontSize: 12,
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
                ),
                Container(
                  height: getVerticalSize(8),
                  width: mediaQueryData.size.width,
                  color: const Color(0xFFF6F7F7),
                ),
                Expanded(
                    child: Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LogOutButton(controller: controller),
                        SignOutButton(controller: controller),
                      ]),
                )),
              ],
            )),
      ),
    ));
  }
}
