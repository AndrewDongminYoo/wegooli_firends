import 'package:wegooli_friends_app/presentation/k97_dialog/bloc/k97_bloc.dart';
import 'package:wegooli_friends_app/presentation/k97_dialog/models/k97_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

class K97Dialog extends StatelessWidget {
  const K97Dialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K97Bloc>(
        create: (context) =>
            K97Bloc(K97State(k97ModelObj: K97Model()))..add(K97InitialEvent()),
        child: const K97Dialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 320.h,
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                            child: Text('lbl213'.tr,
                                style: CustomTextStyles.titleMediumBlack900)),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgCloseone(context);
                            })
                      ])),
              Padding(
                  padding:
                      EdgeInsets.only(top: 10.v, right: 23.h, bottom: 17.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClock,
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    margin: EdgeInsets.only(bottom: 3.v)),
                                Container(
                                    width: 97.h,
                                    margin: EdgeInsets.only(left: 10.h),
                                    child: Text('msg_8_1_12_00'.tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumNotoSansKR
                                            .copyWith(height: 1.30)))
                              ]),
                          SizedBox(height: 3.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse232x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(16.h)),
                                Container(
                                    width: 97.h,
                                    margin: EdgeInsets.only(left: 10.h),
                                    child: Text('msg_8_1_15_00'.tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumNotoSansKR
                                            .copyWith(height: 1.30)))
                              ]),
                          SizedBox(height: 3.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgProfile,
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    margin: EdgeInsets.only(bottom: 3.v)),
                                Container(
                                    width: 97.h,
                                    margin: EdgeInsets.only(left: 10.h),
                                    child: Text('msg_8_1_17_00'.tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumNotoSansKR
                                            .copyWith(height: 1.30)))
                              ])
                        ]),
                        Container(
                            margin: EdgeInsets.only(
                                left: 17.h, top: 3.v, bottom: 92.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 2.v),
                            decoration: AppDecoration.outlineGray700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: Text('lbl126'.tr,
                                style: CustomTextStyles
                                    .bodyLargeNotoSansKRGray700)),
                        Container(
                            margin: EdgeInsets.only(
                                left: 24.h, top: 3.v, bottom: 92.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 2.v),
                            decoration: AppDecoration.outlineGray700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: Text('lbl127'.tr,
                                style: CustomTextStyles
                                    .bodyLargeNotoSansKRGray700))
                      ]))
            ]));
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
