import '../smart_key_available_page/widgets/dooropener_item_widget.dart';
import 'controller/smart_key_available_controller.dart';
import 'models/dooropener_item_model.dart';
import 'models/smart_key_available_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_2.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';

class SmartKeyAvailablePage extends StatelessWidget {
  SmartKeyAvailablePage({Key? key})
      : super(
          key: key,
        );

  SmartKeyAvailableController controller =
      Get.put(SmartKeyAvailableController(SmartKeyAvailableModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          centerTitle: true,
          title: AppbarImage2(
            svgPath: ImageConstant.imgFriends,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 24,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle4640,
                          height: getVerticalSize(92),
                          width: getHorizontalSize(139),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                            bottom: 18,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_32".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "lbl_12_34562".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgFrame19044,
                                      height: getSize(24),
                                      width: getSize(24),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 7,
                                      ),
                                      child: Text(
                                        "lbl_202".tr,
                                        style:
                                            CustomTextStyles.bodySmallOnPrimary,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftOnprimary,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(
                                        left: 53,
                                        bottom: 4,
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
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl115".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                          ),
                          child: Text(
                            "lbl116".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          height: getSize(4),
                          width: getSize(4),
                          margin: getMargin(
                            left: 5,
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.green500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(2),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                          ),
                          child: Text(
                            "lbl117".tr,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(8),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 31,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                      ),
                      child: Text(
                        "lbl118".tr,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 22,
                      right: 40,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(131),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(20),
                          crossAxisSpacing: getHorizontalSize(20),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.smartKeyAvailableModelObj.value
                            .dooropenerItemList.value.length,
                        itemBuilder: (context, index) {
                          DooropenerItemModel model = controller
                              .smartKeyAvailableModelObj
                              .value
                              .dooropenerItemList
                              .value[index];
                          return DooropenerItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: getMargin(
                        left: 22,
                        top: 30,
                        right: 22,
                      ),
                      padding: getPadding(
                        left: 12,
                        top: 11,
                        right: 12,
                        bottom: 11,
                      ),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder33,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgEditOnprimary,
                            height: getSize(30),
                            width: getSize(30),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "lbl123".tr,
                              style: CustomTextStyles.bodySmallBlack900,
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
        ),
      ),
    );
  }
}
