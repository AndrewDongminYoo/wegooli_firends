// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get_state_manager/get_state_manager.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UnsubscriptionConfirm extends GetWidget<UserController> {
  @override
  Widget build(BuildContext context) {
    DateTime expireDate = DateTime.tryParse(controller.carConnection.endAt ?? '') ?? DateTime.now();
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getDefaultAppBar(l10ns.scheduleAnUnsubscribe),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 52, right: 16, bottom: 52),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: Assets.images.imgCrying.path,
                          height: getVerticalSize(123),
                          width: getHorizontalSize(184)),
                      Container(
                          width: getHorizontalSize(179),
                          margin: getMargin(top: 50),
                          child: Text(
                              l10ns.areYouSureYouWantToUnsubscribe(controller.currentUser.value.name ?? l10ns.name4),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumBlack900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.04)))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text(
                              l10ns.subscriptionsWillBeCanceledAfter(
                                  expireDate.year,
                                  expireDate.month,
                                  expireDate.day),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargeBlack900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.03)))),
                      Padding(
                          padding: getPadding(top: 87, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomElevatedButton(
                                    text: l10ns.cancel,
                                    buttonStyle: CustomButtonStyles
                                        .fillGray400C26
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(104),
                                                        getVerticalSize(52)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleMedium18),
                                CustomElevatedButton(
                                    text: l10ns.cancelingASubscription,
                                    buttonStyle: CustomButtonStyles
                                        .fillPrimaryC26
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(216),
                                                        getVerticalSize(52)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleMedium18)
                              ]))
                    ]))));
  }
}
