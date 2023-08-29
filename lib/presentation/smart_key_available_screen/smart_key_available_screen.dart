import '../smart_key_available_screen/widgets/k0_item_widget.dart';
import 'controller/smart_key_available_controller.dart';
import 'models/k0_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/shared_schedule_page/shared_schedule_page.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_2.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SmartKeyAvailableScreen extends GetWidget<SmartKeyAvailableController> {
  const SmartKeyAvailableScreen({Key? key})
      : super(
          key: key,
        );

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
          styleType: Style.bgOutline_1,
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
                            top: 11,
                            bottom: 18,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCarOnprimary14x67,
                                height: getVerticalSize(14),
                                width: getHorizontalSize(67),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgTelevisionOnprimary,
                                height: getVerticalSize(10),
                                width: getHorizontalSize(53),
                                margin: getMargin(
                                  top: 10,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCutOnprimary24x86,
                                      height: getVerticalSize(24),
                                      width: getHorizontalSize(86),
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftOnprimary,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(
                                        left: 54,
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
                  CustomImageView(
                    svgPath: ImageConstant.imgFrame19047Onprimary10x114,
                    height: getVerticalSize(10),
                    width: getHorizontalSize(114),
                    margin: getMargin(
                      top: 5,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(8),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 37,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMenuBlack900,
                    height: getVerticalSize(16),
                    width: getHorizontalSize(60),
                    alignment: Alignment.centerLeft,
                    margin: getMargin(
                      left: 16,
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 25,
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
                            .k0ItemList.value.length,
                        itemBuilder: (context, index) {
                          K0ItemModel model = controller
                              .smartKeyAvailableModelObj
                              .value
                              .k0ItemList
                              .value[index];
                          return K0ItemWidget(
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
                        borderRadius: BorderRadiusStyle.circleBorder35,
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
                          CustomImageView(
                            svgPath: ImageConstant.img10x43,
                            height: getVerticalSize(10),
                            width: getHorizontalSize(43),
                            margin: getMargin(
                              top: 3,
                              bottom: 4,
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.sharedSchedulePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.sharedSchedulePage:
        return SharedSchedulePage();
      default:
        return DefaultWidget();
    }
  }
}
