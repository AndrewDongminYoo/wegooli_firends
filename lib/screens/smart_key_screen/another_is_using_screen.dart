// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';
import '/widgets/separation_bar.dart';
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
          height: 45.h,
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
                      SizedBox(height: 24.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: Assets.cars.rayEvSEu3.path,
                              height: 92.h,
                              width: 139.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.h,
                                bottom: 18.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '더뉴레이',
                                    style: textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '12가 3456',
                                    style: textTheme.bodySmall!.copyWith(
                                      color: Palette.fontBlack66,
                                    ),
                                  ),
                                  SizedBox(height: 1.h),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      gasStationIcon(level: remainingGas),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5.w,
                                          top: 9.h,
                                        ),
                                        child: Text(
                                          '휘발유 $remainingGas%',
                                          style: textTheme.bodySmall,
                                        ),
                                      ),
                                      customIcon(
                                        Assets.svg.icoArrowRight.path,
                                        size: 18.w,
                                        margin: EdgeInsets.only(
                                          left: 54.w,
                                          bottom: 4.h,
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
                      SizedBox(height: 6.h),
                      const CarStatusMessage(),
                      SizedBox(height: 22.h),
                      const RidingIndicator(progress: progress),
                      SizedBox(height: 11.h),
                      Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SeparationBar(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.w,
                                    top: 21.h,
                                  ),
                                  child: Text(
                                    '스마트키',
                                    style: textTheme.titleMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: TextSize.lg,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 40.w,
                                  top: 22.h,
                                  right: 40.w,
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
                                  left: 40.w,
                                  top: 20.h,
                                  right: 40.w,
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
