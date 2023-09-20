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
        child: FutureBuilder(
            future:
                Future.delayed(const Duration(seconds: 3), initPlatformState),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                // Not currently connected to any asynchronous computation. For example, a [FutureBuilder] whose [FutureBuilder.future] is null.
                case ConnectionState.none:
                // Connected to an asynchronous computation and awaiting interaction.
                case ConnectionState.waiting:
                // Connected to an active asynchronous computation. For example, a [Stream] that has returned at least one value, but is not yet done.
                case ConnectionState.active:
                  return Container(
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
                              width: 166.h,
                            )),
                      ],
                    ),
                  );
                // Connected to a terminated asynchronous computation.
                case ConnectionState.done:
                  snapshot.data!.forEach((key, value) {
                    print('$key => $value');
                  });
                  return const LoginPage();
              }
            }),
      ),
    ));
  }
}
