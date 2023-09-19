// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class MyProfileDetail extends GetWidget<UserController> {
  const MyProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.myInfo),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            child: Column(
              children: [
                MyProfileSection(controller: controller),
                const GrayHorizonSeparator(gapHeight: 21),
                Expanded(
                    child: Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LogOutButton(),
                        SignOutButton(),
                      ]),
                )),
              ],
            )),
      ),
    );
  }
}
