// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/unsubscribe_confirm_dialog/bloc/unsubscribe_confirm_bloc.dart';
import '/presentation/unsubscribe_confirm_dialog/models/unsubscribe_confirm_model.dart';
import '/widgets/custom_elevated_button.dart';

class UnsubscribeConfirmDialog extends StatelessWidget {
  const UnsubscribeConfirmDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<UnsubscribeConfirmBloc>(
        create: (context) => UnsubscribeConfirmBloc(UnsubscribeConfirmState(
            unsubscribeConfirmModelObj: UnsubscribeConfirmModel()))
          ..add(UnsubscribeConfirmInitialEvent()),
        child: const UnsubscribeConfirmDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 267.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.h, top: 21.v, right: 25.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('lbl38'.tr,
                                style: CustomTextStyles.titleMedium18),
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                                onTap: NavigatorService.goBack)
                          ])),
                  Container(
                      width: 278.h,
                      margin:
                          EdgeInsets.only(left: 25.h, top: 38.v, right: 25.h),
                      child: Text('msg'.tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 20.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
}
