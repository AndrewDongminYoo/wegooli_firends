// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SubscriptionInfoNoService extends StatelessWidget {
  const SubscriptionInfoNoService({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar:
                CustomAppBar.getDefaultAppBar(l10ns.subscriptionInformation),
            body: Container(
                alignment: Alignment.topCenter,
                margin: getMargin(top: 50),
                child: Column(
                  children: [
                    CustomImageView(
                        imagePath: Assets.images.imgGooli4.path,
                        width: 120,
                        height: 177),
                    const Text(
                      '구독 정보가 없습니다.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w700,
                        height: 1.44,
                        letterSpacing: 0.04,
                      ),
                    ),
                  ],
                ))));
  }
}
