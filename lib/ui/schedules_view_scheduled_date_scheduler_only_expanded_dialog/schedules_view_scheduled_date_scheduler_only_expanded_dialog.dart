// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import 'controller/schedules_view_scheduled_date_scheduler_only_expanded_controller.dart';

// ignore_for_file: must_be_immutable
class SchedulesViewScheduledDateSchedulerOnlyExpandedDialog
    extends StatelessWidget {
  SchedulesViewScheduledDateSchedulerOnlyExpandedDialog(this.controller,
      {Key? key})
      : super(key: key);

  SchedulesViewScheduledDateSchedulerOnlyExpandedController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 219.v),
            padding: EdgeInsets.all(20.h),
            decoration: AppDecoration.shadow
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      alignment: Alignment.centerRight,
                      onTap: Get.back),
                  SizedBox(height: 6.v),
                  Text('lbl10'.tr, style: CustomTextStyles.titleMedium18),
                  SizedBox(height: 22.v),
                  SizedBox(
                      height: 113.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            child: Container(
                                height: 113.v,
                                width: 288.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.1),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.h),
                                    child: LinearProgressIndicator(
                                        value: 0.03,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                theme.colorScheme.primary))))),
                        Align(
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, right: 10.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 43.v,
                                          width: 258.h,
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text('lbl3'.tr,
                                                        style: theme.textTheme
                                                            .bodySmall)),
                                                CustomDropDown(
                                                    width: 258.h,
                                                    icon: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 17.h),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft)),
                                                    hintText:
                                                        'msg_8_16_15_20'.tr,
                                                    hintStyle: theme
                                                        .textTheme.bodyLarge,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    items: controller
                                                        .schedulesViewScheduledDateSchedulerOnlyExpanded
                                                        .value
                                                        .choices
                                                        .value,
                                                    onChanged: (value) {
                                                      controller
                                                          .onSelected(value);
                                                    }),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('lbl3'.tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall),
                                                          SizedBox(height: 8.v),
                                                          Text(
                                                              'msg_8_16_15_20'
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)
                                                        ]))
                                              ])),
                                      SizedBox(height: 10.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomOutlinedButton(
                                                    text: 'lbl126'.tr,
                                                    margin: EdgeInsets.only(
                                                        right: 5.h))),
                                            Expanded(
                                                child: CustomOutlinedButton(
                                                    text: 'lbl127'.tr,
                                                    margin: EdgeInsets.only(
                                                        left: 5.h)))
                                          ])
                                    ])))
                      ])),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 75.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            child: Container(
                                height: 75.v,
                                width: 288.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.1),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.h),
                                    child: LinearProgressIndicator(
                                        value: 0.03,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(theme
                                                .colorScheme
                                                .errorContainer))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl3'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 8.v),
                                      Text('msg_8_16_15_20'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])))
                      ])),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 75.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            child: Container(
                                height: 75.v,
                                width: 288.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.1),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.h),
                                    child: LinearProgressIndicator(
                                        value: 0.03,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.deepPurpleA200))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl3'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 8.v),
                                      Text('msg_8_16_15_20'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])))
                      ])),
                  SizedBox(height: 10.v)
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapImgCloseone() {
    Get.back();
  }
}
