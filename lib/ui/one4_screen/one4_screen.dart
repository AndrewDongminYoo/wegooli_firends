// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/one4_screen/bloc/one4_bloc.dart';
import '/ui/one4_screen/models/one4_model.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class One4Screen extends StatelessWidget {
  One4Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<One4Bloc>(
      create: (context) => One4Bloc(One4State(
        one4ModelObj: One4Model(),
      ))
        ..add(One4InitialEvent()),
      child: One4Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<One4Bloc, One4State>(
      builder: (context, state) {
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
                  Container(
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 16.v,
                      right: 16.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.outlineGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 34.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img21,
                                height: 74.v,
                                width: 128.h,
                                margin: EdgeInsets.only(top: 26.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  bottom: 4.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'lbl_32'.tr,
                                      style: CustomTextStyles
                                          .titleMediumInterBlack900,
                                    ),
                                    SizedBox(height: 9.v),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              child: Text(
                                                'lbl207'.tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray600,
                                              ),
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              'lbl2'.tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray600,
                                            ),
                                            SizedBox(height: 3.v),
                                            Align(
                                              child: Text(
                                                'lbl26'.tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 19.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'lbl_12_3456'.tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              SizedBox(height: 4.v),
                                              Row(
                                                children: [
                                                  Text(
                                                    'lbl208'.tr,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCloseGreenA400,
                                                    height: 7.adaptSize,
                                                    width: 7.adaptSize,
                                                    margin: EdgeInsets.only(
                                                      left: 3.h,
                                                      top: 6.v,
                                                      bottom: 5.v,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.v),
                                              Text(
                                                'lbl_204'.tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        CustomOutlinedButton(
                          text: 'lbl209'.tr,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 28.v,
                      ),
                      child: Text(
                        'lbl13'.tr,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 98.h,
                      top: 8.v,
                      right: 98.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgUnlockedBlueGray900,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                              ),
                              SizedBox(height: 10.v),
                              Align(
                                child: Text(
                                  'lbl6'.tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 62.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.blueGray900,
                            endIndent: 12.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 49.h,
                            top: 7.v,
                          ),
                          child: Column(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLockedBlueGray900,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                              ),
                              SizedBox(height: 10.v),
                              Text(
                                'lbl7'.tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 41.v,
                          bottom: 49.v,
                        ),
                        child: SizedBox(
                          width: 50.h,
                          child: Divider(
                            color: appTheme.blueGray900,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 19.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 29.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.outlineBlack9002.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder45,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLightbulbBlueGray900,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              'lbl8'.tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 41.v,
                          bottom: 49.v,
                        ),
                        child: SizedBox(
                          width: 69.h,
                          child: Divider(
                            color: appTheme.blueGray900,
                            indent: 19.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgEditBlueGray900,
                              height: 25.adaptSize,
                              width: 25.adaptSize,
                            ),
                            SizedBox(height: 12.v),
                            Text(
                              'lbl210'.tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.h),
                        child: SizedBox(
                          height: 69.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.blueGray900,
                            indent: 19.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 49.h,
                          bottom: 13.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCampaignBlueGray900,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              'lbl9'.tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
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
