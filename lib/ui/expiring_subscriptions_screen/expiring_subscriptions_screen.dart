// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/expiring_subscriptions_screen/bloc/expiring_subscriptions_bloc.dart';
import '/ui/expiring_subscriptions_screen/models/expiring_subscriptions_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';

class ExpiringSubscriptionsScreen extends StatelessWidget {
  const ExpiringSubscriptionsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExpiringSubscriptionsBloc>(
        create: (context) => ExpiringSubscriptionsBloc(
            ExpiringSubscriptionsState(
                expiringSubscriptionsModelObj: ExpiringSubscriptionsModel()))
          ..add(ExpiringSubscriptionsInitialEvent()),
        child: const ExpiringSubscriptionsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ExpiringSubscriptionsBloc, ExpiringSubscriptionsState>(
        builder: (context, state) {
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
                  title: AppbarTitle(text: 'lbl123'.tr)),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 22.v),
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, right: 16.h, bottom: 5.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text('lbl131'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBlack90018)),
                                SizedBox(height: 12.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 20.v),
                                    decoration: AppDecoration.outlineGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 10.v),
                                          CustomImageView(
                                              imagePath: ImageConstant.img21,
                                              height: 96.v,
                                              width: 167.h),
                                          SizedBox(height: 30.v),
                                          const Divider(),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h,
                                                  top: 20.v,
                                                  right: 9.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('lbl132'.tr,
                                                        style: CustomTextStyles
                                                            .titleMedium18),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text(
                                                            'lbl_12_3456'.tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary))
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h,
                                                  top: 14.v,
                                                  right: 9.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('lbl133'.tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeOnPrimary),
                                                    Text('lbl_150_000'.tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h,
                                                  top: 3.v,
                                                  right: 9.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('lbl134'.tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeOnPrimary),
                                                    Text(
                                                        'msg_2023_07_01_2023_08_01'
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h,
                                                  top: 3.v,
                                                  right: 9.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('lbl150'.tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeOnPrimary),
                                                    Text('lbl_2023_08_20'.tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)
                                                  ])),
                                          CustomElevatedButton(
                                              height: 48.v,
                                              width: 160.h,
                                              text: 'lbl151'.tr,
                                              margin: EdgeInsets.only(
                                                  top: 21.v, right: 9.h),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimaryTL5,
                                              buttonTextStyle:
                                                  theme.textTheme.titleMedium,
                                              alignment: Alignment.centerRight)
                                        ]))
                              ]))))));
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
