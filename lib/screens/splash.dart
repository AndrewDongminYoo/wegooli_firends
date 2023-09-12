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
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Unfocused(
        child: FutureBuilder(

            /// TODO(andrew): 실제 앱의 동작에 사용될 fetchData 메소드 실행으로 변경 예정
            future: Future.delayed(const Duration(seconds: 3)),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Container(
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
                              onTap: goIdPwLogin,
                              imagePath: Assets.images.imgGooli1.path,
                              fit: BoxFit.fitWidth,
                              height: getVerticalSize(93),
                              width: getHorizontalSize(166),
                            )),
                      ],
                    ),
                  );
                case ConnectionState.active:
                  LoadingDialog.showProgressDialog();
                case ConnectionState.done:
                case ConnectionState.none:
                default:
                  return const LoginWithIdAndPassword();
              }
              return ErrorWidget(
                  snapshot.hasError ? snapshot.error! : snapshot.data!);
            }),
      ),
    ));
  }
}
