import 'controller/map_view_car_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

class MapViewCarBottomsheet extends StatelessWidget {
  MapViewCarBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  MapViewCarController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextFormField(
                controller: controller.locationoneController,
                margin: getMargin(
                  top: 15,
                ),
                hintText: "msg4".tr,
                hintStyle: CustomTextStyles.bodyLargeInterBlack900,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.underLineGray,
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Text(
                  "lbl12".tr,
                  style: CustomTextStyles.titleMediumBluegray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                  right: 15,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img21,
                      height: getVerticalSize(62),
                      width: getHorizontalSize(108),
                      margin: getMargin(
                        top: 9,
                        bottom: 8,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 31,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_32".tr,
                            style: CustomTextStyles.bodyLargeInterBlack900,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                            ),
                            child: Text(
                              "lbl13".tr,
                              style: CustomTextStyles.bodyLargeInterBlack900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "lbl_150_000".tr,
                              style: CustomTextStyles.titleMediumInterBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(36),
                      margin: getMargin(
                        left: 48,
                        top: 3,
                        bottom: 61,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "lbl_2_4".tr,
                            style: CustomTextStyles.bodySmallGray700,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getVerticalSize(10),
                            width: getHorizontalSize(14),
                            margin: getMargin(
                              left: 3,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Divider(
                  color: appTheme.gray300,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Text(
                  "lbl12".tr,
                  style: CustomTextStyles.titleMediumBluegray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                  right: 15,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img21,
                      height: getVerticalSize(62),
                      width: getHorizontalSize(108),
                      margin: getMargin(
                        top: 9,
                        bottom: 8,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 31,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_32".tr,
                            style: CustomTextStyles.bodyLargeInterBlack900,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                            ),
                            child: Text(
                              "lbl13".tr,
                              style: CustomTextStyles.bodyLargeInterBlack900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "lbl_150_000".tr,
                              style: CustomTextStyles.titleMediumInterBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(36),
                      margin: getMargin(
                        left: 48,
                        top: 3,
                        bottom: 61,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "lbl_2_4".tr,
                            style: CustomTextStyles.bodySmallGray700,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getVerticalSize(10),
                            width: getHorizontalSize(14),
                            margin: getMargin(
                              left: 3,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Divider(
                  color: appTheme.gray300,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Text(
                  "lbl12".tr,
                  style: CustomTextStyles.titleMediumBluegray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                  right: 15,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img21,
                      height: getVerticalSize(62),
                      width: getHorizontalSize(108),
                      margin: getMargin(
                        top: 10,
                        bottom: 7,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 31,
                        top: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_32".tr,
                            style: CustomTextStyles.bodyLargeInterBlack900,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Text(
                              "lbl13".tr,
                              style: CustomTextStyles.bodyLargeInterBlack900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "lbl_150_000".tr,
                              style: CustomTextStyles.titleMediumInterBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(36),
                      margin: getMargin(
                        left: 48,
                        bottom: 58,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: getHorizontalSize(17),
                            child: Text(
                              "lbl_2_4".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: CustomTextStyles.bodySmallGray700.copyWith(
                                height: 1.75,
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getVerticalSize(10),
                            width: getHorizontalSize(14),
                            margin: getMargin(
                              left: 3,
                              top: 5,
                              bottom: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
