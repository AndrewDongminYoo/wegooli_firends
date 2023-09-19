// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class UnsubscriptionUpcoming extends GetWidget<VehicleController> {
  const UnsubscriptionUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.subscriptionInformation),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: getPadding(left: 2),
                  child: Text(
                    l10ns.carInfo,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumBlack900.copyWith(
                      letterSpacing: 0.04.h,
                    ),
                  )),
              Container(
                margin: getMargin(top: 12, bottom: 5),
                padding: getPadding(left: 10, top: 30, right: 10, bottom: 20),
                decoration: AppDecoration.outline
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: Assets.cars.niroEvSSwp.path,
                        height: 96.v,
                        width: 167.h,
                      ),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.blueGray30033)),
                      Padding(
                          padding: getPadding(left: 9, top: 20, right: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => Text(
                                      controller.subscriptionModel.value
                                              .carModel ??
                                          '모델',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.titleMedium18
                                          .copyWith(
                                        letterSpacing: 0.04.h,
                                      ),
                                    )),
                                Obx(() => Padding(
                                    padding: getPadding(top: 5, bottom: 1),
                                    child: Text(
                                      controller
                                              .subscriptionModel.value.carNum ??
                                          '12가 3456',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmallOnPrimary
                                          .copyWith(
                                        letterSpacing: 0.02.h,
                                      ),
                                    ))),
                              ])),
                      Padding(
                          padding: getPadding(left: 9, top: 14, right: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10ns.monthlyPayment,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyLargeOnPrimary
                                      .copyWith(
                                    letterSpacing: 0.03.h,
                                  ),
                                ),
                                Obx(() => Text(
                                      '${controller.subscriptionModel.value.fee} 원',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing: 0.03.h,
                                      ),
                                    )),
                              ])),
                      Padding(
                          padding: getPadding(left: 9, top: 3, right: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10ns.subscription,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyLargeOnPrimary
                                      .copyWith(
                                    letterSpacing: 0.03.h,
                                  ),
                                ),
                                Obx(() => Text(
                                      '${controller.subscriptionModel.value.startAt?.substring(0, 10)}~${controller.subscriptionModel.value.endAt?.substring(0, 10)}',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing: 0.03.h,
                                      ),
                                    )),
                              ])),
                      Padding(
                          padding: getPadding(left: 9, top: 3, right: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => Text(
                                    controller.subscriptionModel.value
                                                .withdrawalAt ==
                                            null
                                        ? '결제 예정일'
                                        : l10ns.expectedUnsubscribeDate,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeOnPrimary
                                        .copyWith(
                                      letterSpacing: 0.03.h,
                                    ),
                                  ),
                                ),
                                Obx(() => Text(
                                      controller.calcDate(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing: 0.03.h,
                                      ),
                                    )),
                              ])),
                      CustomElevatedButton(
                        width: 160.h,
                        height: 48.v,
                        text: controller.subscriptionModel.value.withdrawalAt ==
                                null
                            ? l10ns.unsubscribe
                            : l10ns.unsubscribeCancel,
                        margin: getMargin(left: 9, top: 21, right: 9),
                        buttonStyle: CustomButtonStyles.fillPrimaryC5,
                        buttonTextStyle: theme.textTheme.titleMedium,
                        alignment: Alignment.centerRight,
                        onTap: () {
                          controller.subscriptionModel.value.withdrawalAt ==
                                  null
                              ? goUnsubscribeConfirm()
                              : controller.subscribe();
                        },
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}
