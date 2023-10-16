// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k108_bottomsheet/bloc/k108_bloc.dart';
import '/presentation/k108_bottomsheet/models/k108_model.dart';
import '/widgets/custom_outlined_button.dart';

class K108Bottomsheet extends StatelessWidget {
  const K108Bottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K108Bloc>(
        create: (context) => K108Bloc(K108State(k108ModelObj: K108Model()))
          ..add(K108InitialEvent()),
        child: const K108Bottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgCloseBlack90030x30,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapImgCloseone(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 16.v),
                  child: Text('lbl_24'.tr,
                      style: CustomTextStyles.titleMediumBlack900)),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 3.v),
                  child: Text('msg_8_1_16_00'.tr,
                      style: CustomTextStyles.bodyMediumPretendardBluegray900)),
              Padding(
                  padding: EdgeInsets.only(top: 32.v),
                  child: Divider(
                      color: appTheme.gray50002, indent: 4.h, endIndent: 4.h)),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 2.v, right: 3.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Text('lbl223'.tr,
                            style: CustomTextStyles
                                .bodyMediumPretendardBluegray900)),
                    const Spacer(),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Text('lbl_1_16_00'.tr,
                            style: CustomTextStyles
                                .bodyMediumPretendardBluegray900)),
                    CustomImageView(
                        svgPath: ImageConstant.imgArrowup,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(left: 6.h))
                  ])),
              SizedBox(height: 14.v),
              Align(
                  child: Text('lbl_152'.tr,
                      style: CustomTextStyles.bodyMediumPretendardGray50002)),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 7.v, right: 4.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                                color: appTheme.gray50002, endIndent: 6.h)),
                        Expanded(
                            child: Divider(
                                color: appTheme.gray50002,
                                indent: 6.h,
                                endIndent: 6.h)),
                        Expanded(
                            child:
                                Divider(color: appTheme.gray50002, indent: 6.h))
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 32.h, top: 7.v, right: 46.h),
                  child: Row(children: [
                    Text('lbl_12'.tr,
                        style:
                            CustomTextStyles.bodyMediumPretendardBluegray900),
                    const Spacer(flex: 45),
                    Text('lbl_162'.tr,
                        style:
                            CustomTextStyles.bodyMediumPretendardBluegray900),
                    const Spacer(flex: 54),
                    Text('lbl_00'.tr,
                        style: CustomTextStyles.bodyMediumPretendardBluegray900)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 7.v, right: 4.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                                color: appTheme.gray50002, endIndent: 6.h)),
                        Expanded(
                            child: Divider(
                                color: appTheme.gray50002,
                                indent: 6.h,
                                endIndent: 6.h)),
                        Expanded(
                            child:
                                Divider(color: appTheme.gray50002, indent: 6.h))
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 32.h, top: 7.v, right: 46.h),
                  child: Row(children: [
                    Text('lbl_25'.tr,
                        style: CustomTextStyles.bodyMediumPretendardGray50002),
                    const Spacer(flex: 45),
                    Text('lbl_172'.tr,
                        style: CustomTextStyles.bodyMediumPretendardGray50002),
                    const Spacer(flex: 54),
                    Text('lbl_102'.tr,
                        style: CustomTextStyles.bodyMediumPretendardGray50002)
                  ])),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: Divider(
                      color: appTheme.gray50002, indent: 4.h, endIndent: 4.h)),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 5.v, right: 3.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Text('lbl224'.tr,
                            style: CustomTextStyles
                                .bodyMediumPretendardBluegray900)),
                    const Spacer(),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Text('lbl_1_18_00'.tr,
                            style: CustomTextStyles
                                .bodyMediumPretendardBluegray900)),
                    CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack900,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(left: 6.h))
                  ])),
              Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 59.v, 4.h, 78.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomOutlinedButton(
                                text: 'lbl36'.tr,
                                margin: EdgeInsets.only(right: 8.h))),
                        Expanded(
                            child: CustomOutlinedButton(
                                text: 'lbl37'.tr,
                                margin: EdgeInsets.only(left: 8.h)))
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
