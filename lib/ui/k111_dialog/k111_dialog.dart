// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k111_dialog/bloc/k111_bloc.dart';
import '/ui/k111_dialog/models/k111_model.dart';
import '/widgets/custom_elevated_button.dart';

class K111Dialog extends StatelessWidget {
  const K111Dialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K111Bloc>(
        create: (context) => K111Bloc(K111State(k111ModelObj: K111Model()))
          ..add(K111InitialEvent()),
        child: const K111Dialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 263.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 20.v, right: 20.h),
                      onTap: () {
                        onTapImgCloseone(context);
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 6.v),
                      child: Text('lbl38'.tr,
                          style: CustomTextStyles.titleMedium18)),
                  Align(
                      child: Container(
                          width: 288.h,
                          margin: EdgeInsets.only(
                              left: 20.h, top: 18.v, right: 20.h),
                          child: Text('msg'.tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 30.v),
                  Row(children: [
                    CustomElevatedButton(
                        width: 164.h,
                        text: 'lbl36'.tr,
                        buttonStyle: CustomButtonStyles.fillGrayBL10,
                        buttonTextStyle: theme.textTheme.titleMedium),
                    CustomElevatedButton(
                        width: 164.h,
                        text: 'lbl39'.tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryBR10,
                        buttonTextStyle: theme.textTheme.titleMedium)
                  ])
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
