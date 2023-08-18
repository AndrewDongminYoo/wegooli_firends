// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class SubscriptionInfoNoService
    extends GetWidget<SubscriptionInfoNoServiceController> {
  const SubscriptionInfoNoService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: AppbarImage(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "subscription_information".tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text("lbl99".tr,
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
