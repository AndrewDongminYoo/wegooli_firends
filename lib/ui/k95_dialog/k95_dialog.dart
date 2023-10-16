// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k95_dialog/bloc/k95_bloc.dart';
import '/ui/k95_dialog/models/k95_model.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class K95Dialog extends StatelessWidget {
  const K95Dialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K95Bloc>(
        create: (context) =>
            K95Bloc(K95State(k95ModelObj: K95Model()))..add(K95InitialEvent()),
        child: const K95Dialog());
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
                            child: Text('lbl211'.tr,
                                style: CustomTextStyles.titleMediumBlack900)),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgCloseone(context);
                            })
                      ])),
              BlocSelector<K95Bloc, K95State, TextEditingController?>(
                  selector: (state) => state.tfController,
                  builder: (context, tfController) {
                    return CustomTextFormField(
                        controller: tfController,
                        margin:
                            EdgeInsets.only(left: 6.h, top: 25.v, right: 6.h),
                        hintText: 'lbl212'.tr,
                        hintStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 3.v),
                        borderDecoration: TextFormFieldStyleHelper.outlineGray1,
                        filled: false);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 5.v),
                  child: Text('msg29'.tr, style: theme.textTheme.bodyMedium)),
              CustomOutlinedButton(
                  text: 'lbl37'.tr,
                  margin: EdgeInsets.fromLTRB(6.h, 24.v, 6.h, 20.v))
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
