import 'package:wegooli_friends_app/presentation/three_screen/bloc/three_bloc.dart';
import 'package:wegooli_friends_app/presentation/three_screen/models/three_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_checkbox_button.dart';

// ignore: must_be_immutable
class ThreeScreen extends StatelessWidget {
  ThreeScreen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ThreeBloc>(
      create: (context) => ThreeBloc(ThreeState(
        threeModelObj: ThreeModel(),
      ))
        ..add(ThreeInitialEvent()),
      child: ThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 111.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineGray400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup31,
                      height: 19.v,
                      width: 89.h,
                      margin: EdgeInsets.only(bottom: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Text(
                        'lbl_friend'.tr,
                        style: CustomTextStyles.bodyLargeBluegray900,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 36.v,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse161x61,
                        height: 61.adaptSize,
                        width: 61.adaptSize,
                        radius: BorderRadius.circular(
                          30.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 10.v,
                          bottom: 10.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'lbl45'.tr,
                              style: CustomTextStyles.titleMediumBluegray900,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              'lbl_010_1234_5678'.tr,
                              style: CustomTextStyles
                                  .bodyMediumPretendardBluegray900Light,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              Divider(
                color: appTheme.gray10001,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 19.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgEditBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        'lbl199'.tr,
                        style: CustomTextStyles.titleMediumBluegray900SemiBold,
                      ),
                    ),
                    const Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightBlack900,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 16.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<ThreeBloc, ThreeState, bool?>(
                      selector: (state) => state.subscriptionInf,
                      builder: (context, subscriptionInf) {
                        return CustomCheckboxButton(
                          text: 'lbl200'.tr,
                          value: subscriptionInf,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          textStyle:
                              CustomTextStyles.titleMediumBluegray900SemiBold,
                          onChange: (value) {
                            context
                                .read<ThreeBloc>()
                                .add(ChangeCheckBoxEvent(value: value));
                          },
                        );
                      },
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightBlack900,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 5.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCreditcard,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        'lbl188'.tr,
                        style: CustomTextStyles.titleMediumBluegray900SemiBold,
                      ),
                    ),
                    const Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightBlack900,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
