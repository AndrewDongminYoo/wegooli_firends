// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k91_dialog/bloc/k91_bloc.dart';
import '/presentation/k91_dialog/models/k91_model.dart';

class K91Dialog extends StatelessWidget {
  const K91Dialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K91Bloc>(
        create: (context) =>
            K91Bloc(K91State(k91ModelObj: K91Model()))..add(K91InitialEvent()),
        child: const K91Dialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 238.v),
            padding: EdgeInsets.all(20.h),
            decoration: AppDecoration.fillOnPrimaryContainer
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
                      onTap: () {
                        onTapImgCloseone(context);
                      }),
                  SizedBox(height: 6.v),
                  Text('lbl17'.tr, style: CustomTextStyles.titleMedium18),
                  SizedBox(height: 22.v),
                  SizedBox(
                      height: 75.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.center, children: [
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
                                                theme.colorScheme.primary))))),
                        Align(
                            child: SizedBox(
                                height: 43.v,
                                width: 258.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text('lbl18'.tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('msg_8_16_15_20'.tr,
                                                    style: theme
                                                        .textTheme.bodyLarge),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowrightOnPrimary,
                                                    height: 18.adaptSize,
                                                    width: 18.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 17.h,
                                                        bottom: 2.v))
                                              ])),
                                      Align(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Text('lbl18'.tr,
                                                style:
                                                    theme.textTheme.bodySmall),
                                            SizedBox(height: 7.v),
                                            Row(children: [
                                              Text('msg_8_16_15_20'.tr,
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightOnPrimary,
                                                  height: 18.adaptSize,
                                                  width: 18.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 17.h, bottom: 2.v))
                                            ])
                                          ]))
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
                                                appTheme.deepOrangeA200))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl18'.tr,
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
                                      Text('lbl18'.tr,
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
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  void onTapImgCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}
