import 'bloc/two1_bloc.dart';
import 'models/two1_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';

class Two1Screen extends StatelessWidget {
  Two1Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Two1Bloc>(
      create: (context) => Two1Bloc(Two1State(
        two1ModelObj: Two1Model(),
      ))
        ..add(Two1InitialEvent()),
      child: Two1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Two1Bloc, Two1State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              height: 45.v,
              centerTitle: true,
              title: AppbarImage(
                svgPath: ImageConstant.imgFriends,
              ),
              styleType: Style.bgOutline_1,
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse2,
                                      height: 65.adaptSize,
                                      width: 65.adaptSize,
                                      radius: BorderRadius.circular(
                                        32.h,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 2.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl45".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          SizedBox(height: 7.v),
                                          Text(
                                            "lbl_010_1234_5678".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary,
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            "msg_abc123_gmail_com".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: appTheme.gray10002,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 15.v,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEditBlack900,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "lbl122".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightOnprimary,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 3.v),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 30.v,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgInformation,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "lbl123".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightOnprimary,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 3.v),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 30.v,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMenu,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "lbl124".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightOnprimary,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 3.v),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
      },
    );
  }
}
