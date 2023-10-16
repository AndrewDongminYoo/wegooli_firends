import 'package:wegooli_friends_app/presentation/one5_screen/bloc/one5_bloc.dart';
import 'package:wegooli_friends_app/presentation/one5_screen/models/one5_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';

class One5Screen extends StatelessWidget {
  const One5Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<One5Bloc>(
        create: (context) => One5Bloc(One5State(one5ModelObj: One5Model()))
          ..add(One5InitialEvent()),
        child: const One5Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<One5Bloc, One5State>(builder: (context, state) {
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
                  title: AppbarSubtitle1(text: 'lbl200'.tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 45.h, top: 110.v, right: 45.h),
                  child: Column(children: [
                    SizedBox(
                        height: 150.v,
                        width: 270.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowrightGray700,
                              height: 138.v,
                              width: 258.h),
                          Align(
                              child: Text('lbl173'.tr,
                                  style: CustomTextStyles
                                      .bodyLargeNotoSansKRBlack900))
                        ])),
                    SizedBox(height: 65.v),
                    Text('lbl130'.tr,
                        style: CustomTextStyles.titleMediumBlack90018),
                    SizedBox(height: 5.v)
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
