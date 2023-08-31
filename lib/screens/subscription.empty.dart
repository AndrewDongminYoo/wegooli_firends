// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SubscriptionInfoNoService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getDefaultAppBar(l10ns.subscriptionInformation),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(l10ns.haveNoAnySubscriptionInfo,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumBlack900
                              .copyWith(letterSpacing: getHorizontalSize(0.04)))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
