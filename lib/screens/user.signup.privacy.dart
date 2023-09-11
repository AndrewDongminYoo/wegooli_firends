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
      body: SizedBox(
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
                      imagePath: Assets.images.imgAvatar5.path,
                      height: getSize(65),
                      width: getSize(65),
                      radius: BorderRadius.circular(
                        getHorizontalSize(40),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.currentUser.value.nickname ??
                              l10ns.nickname,
                          // overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMedium18.copyWith(
                            letterSpacing: getHorizontalSize(0.04),
                          ),
                        ),
                        Text(
                          controller.currentUser.value.phoneNumber ??
                              '010-1234-5678',
                          // overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.left,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            letterSpacing: getHorizontalSize(0.03),
                          ),
                        ),
                        Text(
                          controller.currentUser.value.email ?? 'abc@gmail.com',
                          // overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.left,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            letterSpacing: getHorizontalSize(0.03),
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
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  LogOutButton(controller: controller),
                  SignOutButton(controller: controller),
                ]),
              )),
            ],
          )),
    ));
  }
}
