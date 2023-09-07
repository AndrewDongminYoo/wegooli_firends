// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UpcomingUnsubscription extends GetWidget<VehicleController> {
  const UpcomingUnsubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar.getDefaultAppBar(l10ns.subscriptionInformation,
            onTapLeading: () => goMyProfile()),
        body: Obx(
          () => controller.subscriptionModel.value.carModel == null
              ? Container(
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
                  ))
              : Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 2),
                          child: Text(
                            l10ns.carInfo,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                CustomTextStyles.titleMediumBlack900.copyWith(
                              letterSpacing: getHorizontalSize(0.04),
                            ),
                          )),
                      Container(
                          margin: getMargin(top: 12, bottom: 5),
                          padding: getPadding(
                              left: 10, top: 30, right: 10, bottom: 20),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: Assets.images.imgCarAllNewMo.path,
                                  height: getVerticalSize(96),
                                  width: getHorizontalSize(167),
                                ),
                                Padding(
                                    padding: getPadding(top: 30),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.blueGray30033)),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 20, right: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Obx(() => Text(
                                                controller.subscriptionModel
                                                        .value.carModel ??
                                                    '모델',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleMedium18
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.04),
                                                ),
                                              )),
                                          Obx(() => Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 1),
                                              child: Text(
                                                controller.subscriptionModel
                                                        .value.carNumber ??
                                                    '12가 3456',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.02),
                                                ),
                                              )))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 14, right: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            l10ns.monthlyPayment,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.03),
                                            ),
                                          ),
                                          Obx(() => Text(
                                                "${controller.subscriptionModel.value.fee} 원",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.03),
                                                ),
                                              ))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 3, right: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            l10ns.subscription,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.03),
                                            ),
                                          ),
                                          Obx(() => Text(
                                                '${controller.subscriptionModel.value.createdAt?.substring(0, 10)}~${controller.subscriptionModel.value.endAt?.substring(0, 10)}',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.03),
                                                ),
                                              ))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 3, right: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            controller.subscriptionModel.value
                                                        .withdrawalAt ==
                                                    null
                                                ? '결제 예정일'
                                                : l10ns.expectedUnsubscribeDate,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.03),
                                            ),
                                          ),
                                          Obx(() => Text(
                                                controller.calcDate(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.03),
                                                ),
                                              ))
                                        ])),
                                CustomElevatedButton(
                                  width: getHorizontalSize(160),
                                  height: getVerticalSize(48),
                                  text: controller.subscriptionModel.value
                                              .withdrawalAt ==
                                          null
                                      ? '해지하기'
                                      : l10ns.unsubscribeCancel,
                                  margin: getMargin(left: 9, top: 21, right: 9),
                                  buttonStyle: CustomButtonStyles.fillPrimaryC5
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                    Size(
                                      getHorizontalSize(160),
                                      getVerticalSize(48),
                                    ),
                                  )),
                                  buttonTextStyle: theme.textTheme.titleMedium!,
                                  alignment: Alignment.centerRight,
                                  onTap: () {
                                    controller.subscriptionModel.value
                                                .withdrawalAt ==
                                            null
                                        ? goUnsubscribeConfirm()
                                        : controller.subscribe();
                                  },
                                )
                              ]))
                    ],
                  )),
        ),
      ),
    );
  }
}
