// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class SmartKeyAvailablePage extends GetWidget<VehicleController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Padding(
                    padding: getPadding(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: Assets.images.imgCarMorUrban.path,
                          height: getVerticalSize(92),
                          width: getHorizontalSize(139),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                            bottom: 18,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                controller.terminalDevice.model ??
                                    l10ns.carMorning,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium!.copyWith(
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
                                  style: CustomTextStyles.bodySmallOnPrimary
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.02)),
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 1),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FuelStatus(),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 7,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        l10ns.remainingFuelLevel(
                                            controller.fuelType,
                                            controller.fuel + '%'),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.02),
                                        ),
                                      ),
                                    ),
                                    ArrowRight(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.carStatusInfo);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                          "|",
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
                    decoration: BoxDecoration(color: appTheme.gray100)),
                Container(
                  width: mediaQueryData.size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
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
                            Align(
                              alignment: Alignment.bottomRight,
                              child: CustomIconButton(
                                height: getVerticalSize(70),
                                width: getHorizontalSize(70),
                                margin: getMargin(right: 22, top: 30),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFE142),
                                    shape: BoxShape.circle),
                                onTap: () => launchUrlString('tel:15666560'),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: Assets.svg.imgEdit.path,
                                      color: Color(0xFF000000),
                                      width: 22.5,
                                      height: 22.5,
                                      margin: getMargin(bottom: 3),
                                    ),
                                    Text(
                                      l10ns.reportAnIncident,
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 사용중일 때 화면 가리기용
                      if (controller.availableNow.value) UntouchableMask(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomTabRouterBar(),
      ),
    );
  }
}

class UntouchableMask extends GetView<VehicleController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQueryData.size.height - getVerticalSize(200),
      width: mediaQueryData.size.width,
      decoration: BoxDecoration(color: Color(0x33A4A8AF)),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: getHorizontalSize(180),
          height: getVerticalSize(44),
          decoration: BoxDecoration(
              color: Color(0x66222222),
              borderRadius: BorderRadius.circular(100)),
          child: Text(
            controller.availableNow.value
                ? l10ns.hongGilDongIsUsingIt(controller.driverName.text)
                : l10ns.available,
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class ControlButton extends StatelessWidget {
  final String svgPath;
  final String text;
  final Function? onTap;
  const ControlButton({
    required this.svgPath,
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          width: 120,
          height: 120,
          decoration:
              BoxDecoration(color: Color(0xFFFFE142), shape: BoxShape.circle)),
      ElevatedButton(
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.all(0)),
          side: MaterialStateProperty.all(BorderSide(
            color: Color(0x18000000),
            width: getHorizontalSize(1.0),
          )),
          fixedSize: MaterialStateProperty.all(Size(130, 130)),
          shape: MaterialStateProperty.all(CircleBorder(
            side: BorderSide(
              // color: Color(0x18000000),
              color: Color(0x33A4A8AF),
              width: 1,
            ),
          )),
          shadowColor: MaterialStateProperty.all(Color(0x18000000)),
          // [
          //   BoxShadow(
          //     color: Color(0x18000000),
          //     blurRadius: 10,
          //     offset: Offset(2, 2),
          //   ),
          // ],
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            // If the button is pressed, return green, otherwise blue
            if (states.contains(MaterialState.pressed)) {
              return Colors.transparent;
            }
            return Color(0xFFFFFFFF);
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return TextStyle(fontSize: 16);
            }
            return TextStyle(fontSize: 16);
          }),
        ),
        child: Container(
          width: 120,
          height: 120,
          padding: getPadding(),
          margin: getMargin(),
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: Color(0x18000000), width: 1),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
              svgPath: svgPath,
              height: getSize(46),
              width: getSize(46),
              color: Colors.transparent,
            ),
            Padding(
              padding: getPadding(top: 3),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium!
                    .copyWith(letterSpacing: getHorizontalSize(0.03)),
              ),
            ),
          ]),
        ),
      )
    ]);
  }
}

class FuelStatus extends GetView<VehicleController> {
  @override
  Widget build(BuildContext context) {
    return getGasImg(level: controller.level).svg(
      semanticsLabel: controller.terminalDevice.fuel,
      height: getSize(24),
      width: getSize(24),
    );
  }

  SvgGenImage getGasImg({required int level}) {
    switch (level) {
      case 0:
      case 1:
        return Assets.svg.gas.imgGasPer10;
      case 2:
        return Assets.svg.gas.imgGasPer20;
      case 3:
        return Assets.svg.gas.imgGasPer30;
      case 4:
        return Assets.svg.gas.imgGasPer40;
      case 5:
        return Assets.svg.gas.imgGasPer50;
      case 6:
        return Assets.svg.gas.imgGasPer60;
      case 7:
        return Assets.svg.gas.imgGasPer70;
      case 8:
        return Assets.svg.gas.imgGasPer80;
      case 9:
        return Assets.svg.gas.imgGasPer90;
      case 10:
        return Assets.svg.gas.imgGasPer100;
      default:
        return Assets.svg.gas.imgGasPer100;
    }
  }
}

class ArrowLeft extends StatelessWidget {
  final Function()? onTap;
  ArrowLeft({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        onTap: onTap,
        svgPath: Assets.svg.imgArrowLeft.path,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(left: 54, top: 2, bottom: 4));
  }
}

class ArrowRight extends StatelessWidget {
  final Function()? onTap;
  ArrowRight({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        onTap: onTap,
        svgPath: Assets.svg.imgArrowRight.path,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(left: 54, top: 2, bottom: 4));
  }
}
