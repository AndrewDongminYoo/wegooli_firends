// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CarStatusPage extends StatefulWidget {
  const CarStatusPage({super.key});

  @override
  State<CarStatusPage> createState() => _CarStatusPageState();
}

class _CarStatusPageState extends State<CarStatusPage> {
  final VehicleController controller = VehicleController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getFriendsTypoAppBar(),
      body: SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height - 45.v,
        child: SingleChildScrollView(
          padding: getPadding(top: 24),
          child: Column(
            children: [
              Padding(
                  padding: getPadding(
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          // TODO 백엔드 이미지 저장이 완료되야 쓸수있을 듯...
                          // imagePath: controller.terminalDevice.carImage ??
                          //     Assets.cars.rayQM9y.path,
                          imagePath: Assets.cars.rayEvSEu3.path,
                          height: 92.v,
                          width: 129.h,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                            padding: getPadding(
                              top: 8,
                              bottom: 18,
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.terminalDevice.model ??
                                        l10ns.carRayGen3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        theme.textTheme.titleMedium!.copyWith(
                                      letterSpacing: 0.03.h,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 4),
                                    child: Text(
                                      controller.terminalDevice.carNum ??
                                          l10ns.licensePlatePlaceholder,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmallOnPrimary
                                          .copyWith(letterSpacing: 0.02.h),
                                    ),
                                  ),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const FuelStatus(),
                                            Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 7,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                l10ns.remainingFuelLevel(
                                                    controller.fuelType,
                                                    '${controller.fuel}%'),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  letterSpacing: 0.02.h,
                                                ),
                                              ),
                                            ),
                                            const ArrowRight(
                                                onTap: goCarStatusInfo),
                                          ])),
                                ])),
                      ])),
              Padding(
                padding: getPadding(top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10ns.status,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallOnPrimary
                          .copyWith(letterSpacing: 0.02.h),
                    ),
                    Padding(
                      padding: getPadding(left: 5),
                      child: Text(
                        '|',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallOnPrimary
                            .copyWith(letterSpacing: 0.02.h),
                      ),
                    ),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: getMargin(
                        left: 5,
                        top: 5,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.green500,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 2),
                      child: Text(
                        controller.availableNow.value
                            ? l10ns.hongGilDongIsUsingIt(controller.driverName)
                            : l10ns.available,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall!
                            .copyWith(letterSpacing: 0.02.h),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 8.v,
                  width: mediaQueryData.size.width,
                  margin: getMargin(top: 31),
                  decoration: AppDecoration.fillGray100),
              Stack(
                alignment: Alignment.center,
                children: [
                  Expanded(
                    // height: mediaQueryData.size.height,
                    // width: mediaQueryData.size.width,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(left: 16, top: 21),
                            child: Text(
                              l10ns.smartKey,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleMediumBlack900.copyWith(
                                letterSpacing: 0.04.h,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ControlButton(
                              margin: getMargin(right: 20),
                              text: l10ns.openDoor,
                              svgPath: Assets.svg.imgUnlocked.path,
                              onTap: controller.openDoor,
                            ),
                            ControlButton(
                              text: l10ns.lockTheDoor,
                              svgPath: Assets.svg.imgLocked.path,
                              onTap: controller.closeDoor,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ControlButton(
                              margin: getMargin(right: 20),
                              text: l10ns.turnOnHazardLights,
                              svgPath: Assets.svg.imgTriangle.path,
                              onTap: controller.emergencyLight,
                            ),
                            ControlButton(
                              text: l10ns.honkTheHorn,
                              svgPath: Assets.svg.imgCampaign.path,
                              onTap: controller.horn,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 사용중일 때 화면 가리기용
                  if (controller.availableNow.value) const UntouchableMask(),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingYellowButton(),
    );
  }
}
