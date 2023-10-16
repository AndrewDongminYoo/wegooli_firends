import 'package:wegooli_friends_app/presentation/k99_screen/bloc/k99_bloc.dart';
import 'package:wegooli_friends_app/presentation/k99_screen/models/k99_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_outlined_button.dart';

class K99Screen extends StatelessWidget {
  const K99Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K99Bloc>(
        create: (context) =>
            K99Bloc(K99State(k99ModelObj: K99Model()))..add(K99InitialEvent()),
        child: const K99Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<K99Bloc, K99State>(builder: (context, state) {
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
                  title: AppbarSubtitle1(text: 'lbl216'.tr)),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 15.v),
                            decoration: AppDecoration.outlineGray3001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.img21,
                                      height: 74.v,
                                      width: 128.h,
                                      margin: EdgeInsets.only(
                                          top: 27.v, bottom: 3.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 12.h, bottom: 5.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Text('lbl214'.tr,
                                                      style: CustomTextStyles
                                                          .titleMediumInterBlack900)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEditBlack90024x24,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 13.h))
                                            ]),
                                            SizedBox(height: 9.v),
                                            Row(children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        child: Text('lbl207'.tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumGray600)),
                                                    SizedBox(height: 4.v),
                                                    Text('lbl2'.tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumGray600),
                                                    SizedBox(height: 3.v),
                                                    Align(
                                                        child: Text('lbl26'.tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumGray600))
                                                  ]),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.h),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('lbl_12_3456'.tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        SizedBox(height: 4.v),
                                                        Row(children: [
                                                          Text('lbl215'.tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCloseRedA700,
                                                              height:
                                                                  7.adaptSize,
                                                              width:
                                                                  7.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 3.h,
                                                                      top: 6.v,
                                                                      bottom:
                                                                          5.v))
                                                        ]),
                                                        SizedBox(height: 3.v),
                                                        Text('lbl_204'.tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)
                                                      ]))
                                            ])
                                          ]))
                                ])),
                        SizedBox(height: 18.v),
                        Text('lbl217'.tr,
                            style: CustomTextStyles.titleMediumInterBlack900),
                        SizedBox(height: 9.v),
                        Row(children: [
                          Column(children: [
                            Text('lbl23'.tr,
                                style: CustomTextStyles.bodyMediumGray600),
                            SizedBox(height: 4.v),
                            Text('lbl24'.tr,
                                style: CustomTextStyles.bodyMediumGray600),
                            SizedBox(height: 3.v),
                            Text('lbl26'.tr,
                                style: CustomTextStyles.bodyMediumGray600)
                          ]),
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('lbl_32'.tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 3.v),
                                    Text('lbl25'.tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 4.v),
                                    Text('lbl218'.tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))
                        ]),
                        SizedBox(height: 25.v),
                        Divider(color: appTheme.blueGray900),
                        SizedBox(height: 17.v),
                        Text('lbl219'.tr,
                            style: CustomTextStyles.titleMediumInterBlack900),
                        SizedBox(height: 9.v),
                        Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('lbl29'.tr,
                                    style: CustomTextStyles.bodyMediumGray600),
                                SizedBox(height: 4.v),
                                Text('lbl30'.tr,
                                    style: CustomTextStyles.bodyMediumGray600),
                                SizedBox(height: 3.v),
                                Text('lbl31'.tr,
                                    style: CustomTextStyles.bodyMediumGray600),
                                SizedBox(height: 3.v),
                                Text('lbl33'.tr,
                                    style: CustomTextStyles.bodyMediumGray600)
                              ]),
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('lbl_2022_08_01'.tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 4.v),
                                    Text('lbl_2022_08_01'.tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 3.v),
                                    Text('lbl32'.tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 4.v),
                                    Text('lbl_42'.tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))
                        ]),
                        SizedBox(height: 58.v),
                        CustomOutlinedButton(text: 'lbl220'.tr),
                        SizedBox(height: 5.v)
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
