// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/home_page_screen/bloc/home_page_bloc.dart';
import '/ui/home_page_screen/models/home_page_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_image_2.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';

// ignore: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      create: (context) => HomePageBloc(HomePageState(
        homePageModelObj: HomePageModel(),
      ))
        ..add(HomePageInitialEvent()),
      child: HomePageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
              height: 45.v,
              leadingWidth: 64.h,
              leading: AppbarImage1(
                svgPath: ImageConstant.imgLocation,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 13.v,
                  bottom: 13.v,
                ),
              ),
              actions: [
                AppbarImage2(
                  svgPath: ImageConstant.imgMenu,
                  margin: EdgeInsets.fromLTRB(9.h, 13.v, 9.h, 12.v),
                ),
              ],
              styleType: Style.bgOutline_1,
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillLightBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'lbl108'.tr,
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                              SizedBox(height: 4.v),
                              SizedBox(
                                width: 140.h,
                                child: Text(
                                  'msg10'.tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 61.v,
                          width: 96.h,
                          margin: EdgeInsets.only(top: 3.v),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgOffer,
                                height: 59.v,
                                width: 89.h,
                                alignment: Alignment.topLeft,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.h),
                                  decoration: AppDecoration.fillBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder7,
                                  ),
                                  child: Text(
                                    'lbl_1_32'.tr,
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          decoration:
                              AppDecoration.outlineBluegray300331.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 13.v,
                                ),
                                child: Text(
                                  'lbl109'.tr,
                                  style: CustomTextStyles
                                      .titleMediumNanumSquareRound,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 4.v,
                                ),
                                child: Text(
                                  'lbl110'.tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareRoundBluegray200,
                                ),
                              ),
                              SizedBox(height: 34.v),
                              CustomImageView(
                                svgPath: ImageConstant.imgLocationBlack900,
                                height: 77.v,
                                width: 84.h,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.h),
                          padding: EdgeInsets.symmetric(vertical: 13.v),
                          decoration:
                              AppDecoration.outlineBluegray300331.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text(
                                  'lbl111'.tr,
                                  style: CustomTextStyles
                                      .titleMediumNanumSquareRound,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 4.v,
                                ),
                                child: Text(
                                  'lbl112'.tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareRoundBluegray200,
                                ),
                              ),
                              SizedBox(height: 25.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgLayer2Yellow100,
                                height: 70.v,
                                width: 112.h,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 5.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.outlineBluegray300331.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 27.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                child: Text(
                                  'lbl113'.tr,
                                  style: CustomTextStyles
                                      .titleMediumNanumSquareRound,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                'lbl114'.tr,
                                style: CustomTextStyles
                                    .bodySmallNanumSquareRoundBluegray200,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup,
                          height: 58.v,
                          width: 119.h,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            right: 1.h,
                            bottom: 2.v,
                          ),
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
      },
    );
  }
}
