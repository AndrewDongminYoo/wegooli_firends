// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SmartKeyAvailablePage extends StatefulWidget {
  const SmartKeyAvailablePage({super.key});

  @override
  State<SmartKeyAvailablePage> createState() => _SmartKeyAvailablePageState();
}

class _SmartKeyAvailablePageState extends State<SmartKeyAvailablePage> {
  final VehicleController controller = VehicleController.to;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar.getFriendsTypoAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height - getVerticalSize(45),
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
                            imagePath: controller.terminalDevice.carImage ??
                                Assets.images.imgCarNewRay.path,
                            height: getVerticalSize(92),
                            margin: getMargin(left: 10),
                            width: getHorizontalSize(129),
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
                                        letterSpacing: getHorizontalSize(0.03),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 4),
                                      child: Text(
                                        controller.terminalDevice.carNum ??
                                            l10ns.licensePlatePlaceholder,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallOnPrimary
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.02)),
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.02),
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
                            .copyWith(letterSpacing: getHorizontalSize(0.02)),
                      ),
                      Padding(
                        padding: getPadding(left: 5),
                        child: Text(
                          '|',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary
                              .copyWith(letterSpacing: getHorizontalSize(0.02)),
                        ),
                      ),
                      Container(
                        height: getSize(4),
                        width: getSize(4),
                        margin: getMargin(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.green500,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(2)),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 2),
                        child: Text(
                          controller.availableNow.value
                              ? l10ns.hongGilDongIsUsingIt(
                                  controller.driverName.text)
                              : l10ns.available,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.bodySmall!
                              .copyWith(letterSpacing: getHorizontalSize(0.02)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: getVerticalSize(8),
                    width: mediaQueryData.size.width,
                    margin: getMargin(top: 31),
                    decoration: AppDecoration.fillGray100),
                SizedBox(
                  width: mediaQueryData.size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        // height: mediaQueryData.size.height,
                        width: mediaQueryData.size.width,
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
                                  style: CustomTextStyles.titleMediumBlack900
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(0.04),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: getPadding(
                                      // left: 40,
                                      top: 22),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: getMargin(right: 20),
                                        child: ControlButton(
                                          text: l10ns.openDoor,
                                          svgPath: Assets.svg.imgUnlocked.path,
                                          onTap: controller.openDoor,
                                        ),
                                      ),
                                      ControlButton(
                                        text: l10ns.lockTheDoor,
                                        svgPath: Assets.svg.imgLocked.path,
                                        onTap: controller.closeDoor,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                      // left: 40,
                                      top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: getMargin(right: 20),
                                        child: ControlButton(
                                          text: l10ns.turnOnHazardLights,
                                          svgPath: Assets.svg.imgTriangle.path,
                                          onTap: controller.emergencyLight,
                                        ),
                                      ),
                                      ControlButton(
                                        text: l10ns.honkTheHorn,
                                        svgPath: Assets.svg.imgCampaign.path,
                                        onTap: controller.horn,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // 사용중일 때 화면 가리기용
                      if (controller.availableNow.value)
                        const UntouchableMask(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const FloatingYellowButton(),
      ),
    );
  }
}
