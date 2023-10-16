// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k96_dialog/bloc/k96_bloc.dart';
import '/presentation/k96_dialog/models/k96_model.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class K96Dialog extends StatelessWidget {
  const K96Dialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K96Bloc>(
        create: (context) =>
            K96Bloc(K96State(k96ModelObj: K96Model()))..add(K96InitialEvent()),
        child: const K96Dialog());
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
                            child: Text('lbl15'.tr,
                                style: CustomTextStyles.titleMediumBlack900)),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgCloseone(context);
                            })
                      ])),
              BlocSelector<K96Bloc, K96State, TextEditingController?>(
                  selector: (state) => state.codeoneController,
                  builder: (context, codeoneController) {
                    return CustomTextFormField(
                        controller: codeoneController,
                        margin:
                            EdgeInsets.only(left: 6.h, top: 25.v, right: 6.h),
                        hintText: 'msg_abcdefghrjk12345'.tr,
                        hintStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 3.v),
                        borderDecoration: TextFormFieldStyleHelper.outlineGray1,
                        filled: false);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 5.v),
                  child: Text('msg30'.tr, style: theme.textTheme.bodyMedium)),
              CustomOutlinedButton(
                  text: 'lbl16'.tr,
                  margin: EdgeInsets.fromLTRB(6.h, 35.v, 6.h, 9.v))
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
