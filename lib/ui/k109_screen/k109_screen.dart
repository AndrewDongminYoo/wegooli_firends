// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k109_screen/bloc/k109_bloc.dart';
import '/ui/k109_screen/models/k109_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_outlined_button.dart';

class K109Screen extends StatelessWidget {
  const K109Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K109Bloc>(
        create: (context) => K109Bloc(K109State(k109ModelObj: K109Model()))
          ..add(K109InitialEvent()),
        child: const K109Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<K109Bloc, K109State>(builder: (context, state) {
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
                  title: AppbarSubtitle1(text: 'lbl225'.tr)),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 53.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 54.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage3,
                            height: 123.v,
                            width: 184.h,
                            alignment: Alignment.center),
                        SizedBox(height: 47.v),
                        Text('msg32'.tr,
                            style:
                                CustomTextStyles.bodyLargeNotoSansKRBlack900),
                        SizedBox(height: 4.v),
                        Text('msg_2023_8_42'.tr,
                            style:
                                CustomTextStyles.bodyLargeNotoSansKRBlack900),
                        const Spacer(),
                        CustomOutlinedButton(text: 'lbl226'.tr),
                        SizedBox(height: 10.v),
                        CustomOutlinedButton(text: 'lbl227'.tr)
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
