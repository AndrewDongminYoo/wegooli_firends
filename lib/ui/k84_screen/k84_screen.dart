// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k84_screen/bloc/k84_bloc.dart';
import '/ui/k84_screen/models/k84_model.dart';
import '/ui/k84_screen/models/userprofile2_item_model.dart';
import '/ui/k84_screen/widgets/userprofile2_item_widget.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class K84Screen extends StatelessWidget {
  K84Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K84Bloc>(
      create: (context) => K84Bloc(K84State(
        k84ModelObj: K84Model(),
      ))
        ..add(K84InitialEvent()),
      child: K84Screen(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 16.v,
                ),
                child: Text(
                  'lbl55'.tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(
                height: 60.v,
                child: BlocSelector<K84Bloc, K84State, K84Model?>(
                  selector: (state) => state.k84ModelObj,
                  builder: (context, k84ModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 6.v,
                        right: 16.h,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 32.h,
                        );
                      },
                      itemCount: k84ModelObj?.userprofile2ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        final model =
                            k84ModelObj?.userprofile2ItemList[index] ??
                                Userprofile2ItemModel();
                        return Userprofile2ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 20.v,
                ),
                child: Text(
                  'lbl11'.tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              Align(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 16.v,
                    right: 16.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 22.h,
                    vertical: 21.v,
                  ),
                  decoration: AppDecoration.outlineBlack9001,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 14.v,
                          right: 9.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlueGray900,
                              height: 9.v,
                              width: 4.h,
                              margin: EdgeInsets.only(
                                top: 8.v,
                                bottom: 2.v,
                              ),
                            ),
                            Text(
                              'lbl_2023_7'.tr,
                              style: CustomTextStyles
                                  .titleMediumRobotoBluegray90001,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlueGray900,
                              height: 9.v,
                              width: 4.h,
                              margin: EdgeInsets.only(
                                top: 8.v,
                                bottom: 2.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 34.v),
                      SizedBox(
                        height: 186.v,
                        width: 282.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 26.v,
                                width: 69.h,
                                margin: EdgeInsets.only(top: 62.v),
                                decoration: BoxDecoration(
                                  color: appTheme.red600,
                                  borderRadius: BorderRadius.circular(
                                    13.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 88.h,
                                  right: 88.h,
                                  bottom: 29.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgFrame97,
                                              height: 3.adaptSize,
                                              width: 3.adaptSize,
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgFrame96,
                                              height: 3.v,
                                              width: 9.h,
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgFrame95,
                                              height: 3.v,
                                              width: 15.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 26.v),
                                    Align(
                                      child: Container(
                                        height: 3.adaptSize,
                                        width: 3.adaptSize,
                                        decoration: BoxDecoration(
                                          color: appTheme.deepPurpleA20001,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                    Container(
                                      height: 26.v,
                                      width: 69.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA700,
                                        borderRadius: BorderRadius.circular(
                                          13.h,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9.v),
                                    Container(
                                      height: 26.v,
                                      width: 69.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.deepPurpleA20003,
                                        borderRadius: BorderRadius.circular(
                                          13.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'lbl57'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                        Text(
                                          'lbl58'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                        Text(
                                          'lbl59'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                        Text(
                                          'lbl60'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                        Text(
                                          'lbl61'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                        Text(
                                          'lbl62'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                        Text(
                                          'lbl63'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoBluegray900,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 14.v,
                                        right: 4.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'lbl_272'.tr,
                                            style: CustomTextStyles
                                                .titleSmallRobotoGray40002,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Text(
                                              'lbl_282'.tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoGray40002,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Text(
                                              'lbl_292'.tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoGray40002,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Text(
                                              'lbl_302'.tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoGray40002,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Text(
                                              'lbl_312'.tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoGray40002,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 32.h),
                                            child: Text(
                                              'lbl_1'.tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoBluegray90001,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 37.h),
                                            child: Text(
                                              'lbl_22'.tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoBluegray90001,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 3.h,
                                        top: 17.v,
                                        right: 4.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'lbl_33'.tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoOnPrimaryContainer,
                                          ),
                                          Text(
                                            'lbl_43'.tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoOnPrimaryContainer,
                                          ),
                                          Text(
                                            'lbl_52'.tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoBluegray90001,
                                          ),
                                          Text(
                                            'lbl_62'.tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoBluegray90001,
                                          ),
                                          Text(
                                            'lbl_72'.tr,
                                            style: CustomTextStyles
                                                .bodyMediumRobotoBluegray90001,
                                          ),
                                          Text(
                                            'lbl_82'.tr,
                                            style: CustomTextStyles
                                                .titleSmallRobotoBluegray90001,
                                          ),
                                          Text(
                                            'lbl_92'.tr,
                                            style: CustomTextStyles
                                                .titleSmallRobotoBluegray90001,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'lbl_102'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_112'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_122'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_132'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_142'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_152'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_162'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 17.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'lbl_172'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_182'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_192'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_202'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_212'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_222'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_232'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 17.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'lbl_242'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_252'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_262'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_272'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_282'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_292'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                        Text(
                                          'lbl_302'.tr,
                                          style: CustomTextStyles
                                              .titleSmallRobotoBluegray90001,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomOutlinedButton(
                text: 'lbl206'.tr,
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 5.v),
                alignment: Alignment.center,
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
