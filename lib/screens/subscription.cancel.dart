// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UnsubscriptionConfirm extends GetWidget<VehicleController> {
  UnsubscriptionConfirm({super.key});
  @override
  Widget build(BuildContext context) {
    DateTime expireDate =
        DateTime.tryParse(controller.calcDate()) ?? DateTime.now();
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.scheduleAnUnsubscribe),
      body: SingleChildScrollView(
          // width: mediaQueryData.size.width,
          padding: getPadding(left: 16, top: 52, right: 16, bottom: 52),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: Assets.images.imgGooli5.path,
                height: getVerticalSize(130),
                width: getHorizontalSize(157),
                fit: BoxFit.cover,
              ),
              Container(
                  width: getHorizontalSize(179),
                  margin: getMargin(top: 50),
                  child: Text(
                    l10ns.areYouSureYouWantToUnsubscribe(
                        controller.currentUser.nickname ?? '닉네임'),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumBlack900.copyWith(
                      letterSpacing: getHorizontalSize(0.04),
                    ),
                  )),
              Padding(
                  padding: getPadding(top: 23),
                  child: Text(
                    l10ns.subscriptionsWillBeCanceledAfter(
                        expireDate.year, expireDate.month, expireDate.day),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyLargeBlack900.copyWith(
                      letterSpacing: getHorizontalSize(0.03),
                    ),
                  )),
              Padding(
                  padding: getPadding(top: 87, bottom: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomElevatedButton(
                            width: 104,
                            height: 52,
                            text: l10ns.cancel,
                            buttonStyle:
                                CustomButtonStyles.fillGray400C26.copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                              Size(
                                getHorizontalSize(104),
                                getVerticalSize(52),
                              ),
                            )),
                            buttonTextStyle: CustomTextStyles.titleMedium18,
                            onTap: () => goBack()),
                        CustomElevatedButton(
                          width: 216,
                          height: 52,
                          text: l10ns.cancelingASubscription,
                          buttonStyle:
                              CustomButtonStyles.fillPrimaryC26.copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              getHorizontalSize(216),
                              getVerticalSize(52),
                            ),
                          )),
                          buttonTextStyle: CustomTextStyles.titleMedium18,
                          onTap: () {
                            Get.dialog(UnsubscriptionConfirmWarnDialog(
                                controller: controller));
                            // controller.unsubscribe();
                          },
                        )
                      ]))
            ],
          )),
    ));
  }
}
