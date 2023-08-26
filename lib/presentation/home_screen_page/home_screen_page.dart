import '../home_screen_page/widgets/slider_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/home_screen_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenController controller =
      Get.put(HomeScreenController(HomeScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          leadingWidth: getHorizontalSize(104),
          leading: AppbarImage(
            svgPath: ImageConstant.imgFriends,
            margin: getMargin(
              left: 16,
              top: 14,
              bottom: 14,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgMenuOnprimary,
              margin: getMargin(
                left: 9,
                top: 13,
                right: 9,
                bottom: 12,
              ),
            ),
          ],
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 20,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(150),
                    width: getHorizontalSize(328),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Obx(
                          () => CarouselSlider.builder(
                            options: CarouselOptions(
                              height: getVerticalSize(150),
                              initialPage: 0,
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (
                                index,
                                reason,
                              ) {
                                controller.sliderIndex.value = index;
                              },
                            ),
                            itemCount: controller.homeScreenModelObj.value
                                .sliderItemList.value.length,
                            itemBuilder: (context, index, realIndex) {
                              SliderItemModel model = controller
                                  .homeScreenModelObj
                                  .value
                                  .sliderItemList
                                  .value[index];
                              return SliderItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Obx(
                            () => Container(
                              height: getVerticalSize(5),
                              margin: getMargin(
                                left: 20,
                                bottom: 15,
                              ),
                              child: AnimatedSmoothIndicator(
                                activeIndex: controller.sliderIndex.value,
                                count: controller.homeScreenModelObj.value
                                    .sliderItemList.value.length,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 5,
                                  activeDotColor: theme.colorScheme.primary,
                                  dotColor: theme.colorScheme.onError,
                                  dotHeight: getVerticalSize(5),
                                  dotWidth: getHorizontalSize(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              right: 4,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 20,
                              right: 15,
                              bottom: 20,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 5,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl15".tr,
                                              style: CustomTextStyles
                                                  .titleMedium18,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Text(
                                                "lbl16".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgFolder,
                                        height: getSize(35),
                                        width: getSize(35),
                                        margin: getMargin(
                                          left: 23,
                                          bottom: 7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(100),
                                  margin: getMargin(
                                    left: 5,
                                    top: 42,
                                  ),
                                  child: Text(
                                    "msg2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallOnPrimary
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              left: 4,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 20,
                              right: 15,
                              bottom: 20,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 5,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl17".tr,
                                          style: CustomTextStyles.titleMedium18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgCar,
                                        height: getSize(39),
                                        width: getSize(39),
                                        margin: getMargin(
                                          left: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(110),
                                  margin: getMargin(
                                    left: 5,
                                    top: 28,
                                  ),
                                  child: Text(
                                    "msg6".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallOnPrimary
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 19,
                      right: 20,
                      bottom: 19,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "lbl18".tr,
                                    style: CustomTextStyles.titleMedium18,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl19".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 13,
                                ),
                                child: Text(
                                  "lbl20".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUserPrimary,
                          height: getSize(56),
                          width: getSize(56),
                        ),
                      ],
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
