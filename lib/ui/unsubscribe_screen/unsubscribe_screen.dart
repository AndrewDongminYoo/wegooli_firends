// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/unsubscribe_screen/bloc/unsubscribe_bloc.dart';
import '/ui/unsubscribe_screen/models/unsubscribe_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';

class UnsubscribeScreen extends StatelessWidget {
  const UnsubscribeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<UnsubscribeBloc>(
        create: (context) => UnsubscribeBloc(
            UnsubscribeState(unsubscribeModelObj: UnsubscribeModel()))
          ..add(UnsubscribeInitialEvent()),
        child: const UnsubscribeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<UnsubscribeBloc, UnsubscribeState>(
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
                        NavigatorService.goBack();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: 'lbl38'.tr)),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 50.v),
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, right: 16.h, bottom: 5.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.img157x120,
                                height: 157.v,
                                width: 120.h),
                            SizedBox(height: 20.v),
                            SizedBox(
                                width: 179.h,
                                child: Text('msg17'.tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleMediumBlack90018
                                        .copyWith(height: 1.44))),
                            SizedBox(height: 23.v),
                            Text('msg_2023_8_4'.tr,
                                style: CustomTextStyles.bodyLargeBlack900),
                            SizedBox(height: 81.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomElevatedButton(
                                      width: 104.h,
                                      text: 'lbl36'.tr,
                                      buttonStyle: CustomButtonStyles.fillGray),
                                  CustomElevatedButton(
                                      width: 216.h, text: 'lbl143'.tr)
                                ])
                          ]))))));
    });
  }
}
