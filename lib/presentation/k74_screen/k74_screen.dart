// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k74_screen/bloc/k74_bloc.dart';
import '/presentation/k74_screen/models/k74_model.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class K74Screen extends StatelessWidget {
  K74Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K74Bloc>(
      create: (context) => K74Bloc(K74State(
        k74ModelObj: K74Model(),
      ))
        ..add(K74InitialEvent()),
      child: K74Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'lbl117'.tr,
                            style: CustomTextStyles.titleMediumBlack90018,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        CustomElevatedButton(
                          height: 34.v,
                          width: 95.h,
                          text: 'lbl118'.tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                          buttonTextStyle:
                              CustomTextStyles.bodyMediumPretendardOnPrimary,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 26.h,
                            top: 5.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 35.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  'lbl_12_20_pm'.tr,
                                  style: CustomTextStyles.bodySmallGray40001,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: SizedBox(
                                  width: 210.h,
                                  child: Text(
                                    'msg11'.tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: CustomTextStyles
                                        .bodyMediumPretendardOnPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 61.v),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse132x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                  ),
                                  SizedBox(height: 101.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse132x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'lbl45'.tr,
                                      style: CustomTextStyles.bodySmallBlack900,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 3.v,
                                        right: 43.h,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomElevatedButton(
                                            height: 34.v,
                                            width: 192.h,
                                            text: 'msg12'.tr,
                                            buttonStyle: CustomButtonStyles
                                                .fillBlueGrayTL17,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyMediumPretendard,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 5.h,
                                              top: 19.v,
                                            ),
                                            child: Text(
                                              'lbl_12_22_pm'.tr,
                                              style: CustomTextStyles
                                                  .bodySmallInterGray40001_1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 19.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 17.v,
                                              bottom: 1.v,
                                            ),
                                            child: Text(
                                              'lbl_12_25_pm'.tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray40001,
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            height: 34.v,
                                            width: 168.h,
                                            text: 'lbl119'.tr,
                                            margin: EdgeInsets.only(left: 5.h),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL17,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyMediumPretendardOnPrimary,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 26.v),
                                    Text(
                                      'lbl45'.tr,
                                      style: CustomTextStyles.bodySmallBlack900,
                                    ),
                                    SizedBox(height: 3.v),
                                    CustomElevatedButton(
                                      height: 34.v,
                                      width: 215.h,
                                      text: 'msg13'.tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillBlueGrayTL17,
                                      buttonTextStyle:
                                          CustomTextStyles.bodyMediumPretendard,
                                    ),
                                    SizedBox(height: 5.v),
                                    Row(
                                      children: [
                                        CustomElevatedButton(
                                          height: 34.v,
                                          width: 138.h,
                                          text: 'lbl120'.tr,
                                          buttonStyle: CustomButtonStyles
                                              .fillBlueGrayTL17,
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumPretendard,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 5.h,
                                            top: 17.v,
                                          ),
                                          child: Text(
                                            'lbl_12_15_pm'.tr,
                                            style: CustomTextStyles
                                                .bodySmallGray40001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 124.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCamera,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 6.v),
                            ),
                            Expanded(
                              child: BlocSelector<K74Bloc, K74State,
                                  TextEditingController?>(
                                selector: (state) =>
                                    state.chatinputoneController,
                                builder: (context, chatinputoneController) {
                                  return CustomTextFormField(
                                    controller: chatinputoneController,
                                    margin: EdgeInsets.only(left: 8.h),
                                    hintText: 'lbl121'.tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumPretendardGray50001,
                                    textInputAction: TextInputAction.done,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 18.h,
                                      vertical: 9.v,
                                    ),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillBlueGray,
                                    fillColor: appTheme.blueGray30033,
                                  );
                                },
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgSend,
                              height: 22.v,
                              width: 24.h,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                top: 6.v,
                                bottom: 6.v,
                              ),
                            ),
                          ],
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
  }
}
