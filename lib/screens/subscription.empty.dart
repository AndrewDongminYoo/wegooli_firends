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
      appBar: CustomAppBar.getDefaultAppBar(l10ns.subscriptionInformation),
      body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              const Spacer(),
              Text(
                l10ns.haveNoAnySubscriptionInfo,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumBlack900.copyWith(
                  letterSpacing: getHorizontalSize(0.04),
                ),
              ),
            ],
          )),
    ));
  }
}
