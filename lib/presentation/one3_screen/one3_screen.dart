import 'bloc/one3_bloc.dart';
import 'models/one3_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class One3Screen extends StatelessWidget {
  One3Screen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<One3Bloc>(
      create: (context) => One3Bloc(One3State(
        one3ModelObj: One3Model(),
      ))
        ..add(One3InitialEvent()),
      child: One3Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                decoration: AppDecoration.outlineGray4001,
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
                        "lbl_friend".tr,
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
                  "lbl117".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              CustomElevatedButton(
                height: 38.v,
                width: 108.h,
                text: "lbl118".tr,
                margin: EdgeInsets.only(
                  top: 8.v,
                  right: 16.h,
                ),
                buttonStyle: CustomButtonStyles.fillBlueGrayTL19,
                buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 85.h,
                    top: 6.v,
                    right: 16.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillBluegray900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      SizedBox(
                        width: 219.h,
                        child: Text(
                          "msg11".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    right: 16.h,
                  ),
                  child: Text(
                    "lbl_12_20_pm".tr,
                    style: CustomTextStyles.bodySmallInterBluegray300,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 19.v,
                    right: 16.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 79.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse150x50,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              radius: BorderRadius.circular(
                                25.h,
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "lbl45".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 7.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                height: 38.v,
                                width: 209.h,
                                text: "msg12".tr,
                                buttonStyle: CustomButtonStyles.fillGrayTL19,
                                buttonTextStyle: theme.textTheme.bodyMedium!,
                              ),
                              SizedBox(height: 10.v),
                              Text(
                                "lbl_12_22_pm".tr,
                                style:
                                    CustomTextStyles.bodySmallInterBluegray300,
                              ),
                              SizedBox(height: 16.v),
                              CustomElevatedButton(
                                height: 38.v,
                                width: 184.h,
                                text: "lbl119".tr,
                                buttonStyle:
                                    CustomButtonStyles.fillBlueGrayTL19,
                                buttonTextStyle: CustomTextStyles
                                    .bodyMediumOnPrimaryContainer,
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 10.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_12_25_pm".tr,
                                  style: CustomTextStyles
                                      .bodySmallInterBluegray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 13.v,
                  right: 50.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 18.v),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse150x50,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            radius: BorderRadius.circular(
                              25.h,
                            ),
                          ),
                          Text(
                            "lbl45".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomElevatedButton(
                              height: 38.v,
                              text: "msg13".tr,
                              buttonStyle: CustomButtonStyles.fillGrayTL19,
                              buttonTextStyle: theme.textTheme.bodyMedium!,
                            ),
                            SizedBox(height: 6.v),
                            CustomElevatedButton(
                              height: 38.v,
                              width: 153.h,
                              text: "lbl120".tr,
                              buttonStyle: CustomButtonStyles.fillGrayTL19,
                              buttonTextStyle: theme.textTheme.bodyMedium!,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 78.h,
                  top: 10.v,
                ),
                child: Text(
                  "lbl_12_15_pm".tr,
                  style: CustomTextStyles.bodySmallInterBluegray300,
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 12.v,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCameraBlueGray900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                    ),
                    Expanded(
                      child: BlocSelector<One3Bloc, One3State,
                          TextEditingController?>(
                        selector: (state) => state.inputoneController,
                        builder: (context, inputoneController) {
                          return CustomTextFormField(
                            controller: inputoneController,
                            margin: EdgeInsets.only(left: 8.h),
                            hintText: "lbl121".tr,
                            hintStyle:
                                CustomTextStyles.bodyMediumPoppinsGray70002,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 8.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGrayTL18,
                            fillColor: appTheme.blueGray50,
                          );
                        },
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgSendBlueGray900,
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
