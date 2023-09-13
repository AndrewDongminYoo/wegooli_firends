// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get_state_manager/get_state_manager.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CarStatusInformation extends GetWidget<VehicleController> {
  const CarStatusInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.carStatusInformation),
      body: SizedBox(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: getPadding(left: 80, top: 13, bottom: 20, right: 80),
                  child: CustomImageView(
                    // TODO controller.terminalDevice.carImg 로 대체해야함!!
                    imagePath: Assets.images.imgCarSpark.path,
                    height: getVerticalSize(132),
                    width: getHorizontalSize(200),
                  )),
              const GrayHorizonSeparator(),
              Container(
                padding: getPadding(left: 16, top: 20, bottom: 20, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(bottom: 10),
                      child: Text(
                        l10ns.basicInfo,
                        style: const TextStyle(
                          color: ColorConstant.fontColorBlack,
                          fontSize: 18,
                          fontFamily: FontFamily.pretendard,
                          fontWeight: FontWeight.w700,
                          height: 1.44,
                          letterSpacing: 0.04,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.modelName,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          controller.terminalDevice.model ?? l10ns.carMorning,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.carType,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          controller.terminalDevice.segment ?? l10ns.segmentB,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.fuel,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          controller.terminalDevice.fuelType ?? l10ns.gasoline,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.numberOfPeople,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          l10ns.seater(controller.terminalDevice.seats ?? 0),
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const GrayHorizonSeparator(),
              Container(
                padding: getPadding(left: 16, top: 20, bottom: 20, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(bottom: 10),
                      child: Text(
                        l10ns.maintenanceStatus,
                        style: const TextStyle(
                          color: ColorConstant.fontColorBlack,
                          fontSize: 18,
                          fontFamily: FontFamily.pretendard,
                          fontWeight: FontWeight.w700,
                          height: 1.44,
                          letterSpacing: 0.04,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.engineOilChangedDate,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          controller.carManagementModel.value.oilCheckDate ??
                              '-',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.tireInspectionDate,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          controller.carManagementModel.value.tireCheckDate ??
                              '-',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10ns.batteryStatus,
                          style: const TextStyle(
                            color: Color(0x66222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                        Text(
                          controller.carManagementModel.value.batteryStatus ??
                              l10ns.good,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: ColorConstant.fontColorBlack,
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
