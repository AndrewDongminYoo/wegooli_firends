// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k101_screen/bloc/k101_bloc.dart';
import '/ui/k101_screen/models/k101_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';

class K101Screen extends StatelessWidget {
  const K101Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K101Bloc>(
        create: (context) => K101Bloc(K101State(k101ModelObj: K101Model()))
          ..add(K101InitialEvent()),
        child: const K101Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<K101Bloc, K101State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  height: 40.v,
                  leadingWidth: 33.h,
                  leading: AppbarImage1(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 4.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle1(text: 'lbl200'.tr)),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text('lbl221'.tr,
                                style: CustomTextStyles.titleMediumBlack900)),
                        Container(
                            width: 328.h,
                            margin: EdgeInsets.only(
                                left: 1.h, top: 8.v, bottom: 5.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 6.v),
                            decoration: AppDecoration.outlineGray3001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl222'.tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 6.v),
                                  Text('lbl_12_34562'.tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 6.v),
                                  Text('msg_150_000'.tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 5.v),
                                  Text('msg_2023_07_01'.tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 5.v),
                                  Text('msg_2023'.tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 8.v),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 3.v),
                                      decoration: AppDecoration.outlineGray700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                      child: Text('lbl39'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeNotoSansKRGray700))
                                ]))
                      ]))));
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