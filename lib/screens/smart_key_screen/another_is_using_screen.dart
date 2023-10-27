// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';
import 'controller/smart_key_controller.dart';
import 'widgets/car_status_message.dart';
import 'widgets/controll_button.dart';
import 'widgets/crash_report_floating_button.dart';
import 'widgets/gas_icon.dart';
import 'widgets/riding_indicator.dart';
import 'widgets/untouchable_mask.dart';

class AnotherIsUsingScreen extends StatelessWidget {
  const AnotherIsUsingScreen({super.key});
  static const routeName = '/currently_using';

  @override
  Widget build(BuildContext context) {
    const remainingGas = 20;
    const progress = 0.0;
    final controller = SmartKeyController.to;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          title: CustomImageView(svgPath: Assets.svg.imgFriends.path),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 24.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: Assets.cars.rayEvSEu3.path,
                              height: 92.v,
                              width: 139.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.v,
                                bottom: 18.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '더뉴레이',
                                    style: textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    '12가 3456',
                                    style: textTheme.bodySmall!.copyWith(
                                      color: Palette.fontBlack66,
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      gasStationIcon(level: remainingGas),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5.h,
                                          top: 9.v,
                                        ),
                                        child: Text(
                                          '휘발유 $remainingGas%',
                                          style: textTheme.bodySmall,
                                        ),
                                      ),
                                      customIcon(
                                        Assets.svg.icoArrowRight.path,
                                        size: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 54.h,
                                          bottom: 4.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.v),
                      const CarStatusMessage(),
                      SizedBox(height: 22.v),
                      const RidingIndicator(progress: progress),
                      SizedBox(height: 11.v),
                      Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 8.v,
                                width: double.maxFinite,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF6F7F7),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 21.v,
                                  ),
                                  child: Text(
                                    '스마트키',
                                    style: textTheme.titleMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: TextSize.lg.fSize,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 40.h,
                                  top: 22.v,
                                  right: 40.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ControllButton(
                                      '문열기',
                                      Assets.svg.icoUnlocked.path,
                                      onPressed: controller.openDoor,
                                    ),
                                    ControllButton(
                                      '문잠금',
                                      Assets.svg.icoLocked.path,
                                      isRightSide: true,
                                      onPressed: controller.closeDoor,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 40.h,
                                  top: 20.v,
                                  right: 40.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ControllButton(
                                      '비상등',
                                      Assets.svg.icoTriangle.path,
                                      onPressed: controller.emergencyLight,
                                    ),
                                    ControllButton(
                                      '경적',
                                      Assets.svg.icoCampaign.path,
                                      isRightSide: true,
                                      onPressed: controller.horn,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const UntouchableMask()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const CrashReportFAB(enabled: false),
      ),
    );
  }
}
