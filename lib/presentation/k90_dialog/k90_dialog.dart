import 'package:wegooli_friends_app/presentation/k90_dialog/bloc/k90_bloc.dart';
import 'package:wegooli_friends_app/presentation/k90_dialog/models/k90_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class K90Dialog extends StatelessWidget {
  const K90Dialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K90Bloc>(
        create: (context) =>
            K90Bloc(K90State(k90ModelObj: K90Model()))..add(K90InitialEvent()),
        child: const K90Dialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 318.v),
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
                      child: Text('lbl15'.tr,
                          style: CustomTextStyles.titleMedium18)),
                  BlocSelector<K90Bloc, K90State, TextEditingController?>(
                      selector: (state) => state.valueoneController,
                      builder: (context, valueoneController) {
                        return CustomTextFormField(
                            controller: valueoneController,
                            margin: EdgeInsets.only(
                                left: 20.h, top: 22.v, right: 20.h),
                            hintText: 'msg_qwer_tyui_asdf_zxcv'.tr,
                            hintStyle: CustomTextStyles.bodyLargeGray50004,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 14.v));
                      }),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      text: 'lbl16'.tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.titleMedium)
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
