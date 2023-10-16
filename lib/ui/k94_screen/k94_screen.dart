// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k94_screen/bloc/k94_bloc.dart';
import '/ui/k94_screen/models/k94_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_floating_button.dart';

class K94Screen extends StatelessWidget {
  const K94Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K94Bloc>(
        create: (context) =>
            K94Bloc(K94State(k94ModelObj: K94Model()))..add(K94InitialEvent()),
        child: const K94Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<K94Bloc, K94State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 34.h,
                  leading: AppbarImage1(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: 'lbl21'.tr)),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 13.v),
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 115.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle4640,
                                height: 132.v,
                                width: 200.h),
                            SizedBox(height: 20.v),
                            Container(
                                height: 8.v,
                                width: double.maxFinite,
                                decoration:
                                    BoxDecoration(color: appTheme.gray10002)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 21.v),
                                    child: Text('lbl22'.tr,
                                        style:
                                            CustomTextStyles.titleMedium18))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 14.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl23'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 3.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl24'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl25'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 3.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl26'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl27'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 3.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl33'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl_42'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            SizedBox(height: 21.v),
                            Container(
                                height: 8.v,
                                width: double.maxFinite,
                                decoration:
                                    BoxDecoration(color: appTheme.gray10002)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 21.v),
                                    child: Text('lbl28'.tr,
                                        style:
                                            CustomTextStyles.titleMedium18))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 14.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl29'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl_2023_08_01'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 4.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl30'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl_2023_08_01'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 3.v, right: 16.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl31'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary),
                                      Text('lbl32'.tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]))
                          ])))),
              floatingActionButton: CustomFloatingButton(
                  height: 70,
                  width: 70,
                  backgroundColor: theme.colorScheme.primary,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgContactsupport,
                      height: 35.0.v,
                      width: 35.0.h))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
