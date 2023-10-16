// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k102_screen/bloc/k102_bloc.dart';
import '/ui/k102_screen/models/k102_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_radio_button.dart';

class K102Screen extends StatelessWidget {
  const K102Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K102Bloc>(
        create: (context) => K102Bloc(K102State(k102ModelObj: K102Model()))
          ..add(K102InitialEvent()),
        child: const K102Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 40.v,
                leadingWidth: 33.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 4.v),
                    onTap: () {
                      NavigatorService.goBack();
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: 'lbl188'.tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 36.v),
                child: Column(children: [
                  BlocSelector<K102Bloc, K102State, String?>(
                      selector: (state) => state.radioGroup,
                      builder: (context, radioGroup) {
                        return CustomRadioButton(
                            width: 324.h,
                            text: 'lbl_7210'.tr,
                            value: 'lbl_7210'.tr,
                            groupValue: radioGroup,
                            padding: EdgeInsets.only(left: 12.h, right: 30.h),
                            textStyle:
                                CustomTextStyles.bodyLargeNotoSansKRGray700,
                            isRightCheck: true,
                            onChange: (value) {
                              context
                                  .read<K102Bloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            });
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, top: 16.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocSelector<K102Bloc, K102State, String?>(
                                selector: (state) => state.radioGroup1,
                                builder: (context, radioGroup1) {
                                  return CustomRadioButton(
                                      text: 'lbl_1210'.tr,
                                      value: 'lbl_1210'.tr,
                                      groupValue: radioGroup1,
                                      textStyle: CustomTextStyles
                                          .bodyLargeNotoSansKRGray700,
                                      onChange: (value) {
                                        context.read<K102Bloc>().add(
                                            ChangeRadioButton1Event(
                                                value: value));
                                      });
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgCloseGray700,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(top: 4.v, bottom: 5.v))
                          ])),
                  SizedBox(height: 60.v),
                  CustomOutlinedButton(text: 'lbl125'.tr),
                  SizedBox(height: 5.v)
                ]))));
  }
}
