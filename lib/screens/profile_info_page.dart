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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.myInfo),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            // color: appTheme.amber500,
            child: Column(
              children: [
                MyProfileSection(controller: controller),
                const GrayHorizonSeparator(gapHeight: 21),
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
    );
  }
}
