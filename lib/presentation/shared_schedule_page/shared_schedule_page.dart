import '../shared_schedule_page/widgets/userprofile_item_widget.dart';
import 'controller/shared_schedule_controller.dart';
import 'models/shared_schedule_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_2.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class SharedSchedulePage extends StatelessWidget {
  SharedSchedulePage({Key? key})
      : super(
          key: key,
        );

  SharedScheduleController controller =
      Get.put(SharedScheduleController(SharedScheduleModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgQrcode,
                    height: getVerticalSize(15),
                    width: getHorizontalSize(28),
                    margin: getMargin(
                      left: 16,
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(84),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          left: 16,
                          top: 15,
                          right: 16,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: getHorizontalSize(15),
                          );
                        },
                        itemCount: controller.sharedScheduleModelObj.value
                            .userprofileItemList.value.length,
                        itemBuilder: (context, index) {
                          UserprofileItemModel model = controller
                              .sharedScheduleModelObj
                              .value
                              .userprofileItemList
                              .value[index];
                          return UserprofileItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(8),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 21,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgCarBlack900,
                    height: getVerticalSize(16),
                    width: getHorizontalSize(28),
                    margin: getMargin(
                      left: 16,
                      top: 24,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 16,
                        top: 15,
                        right: 16,
                      ),
                      padding: getPadding(
                        left: 22,
                        top: 20,
                        right: 22,
                        bottom: 20,
                      ),
                      decoration: AppDecoration.outlineBluegray30033.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 3,
                              right: 3,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftOnprimary,
                                  height: getSize(18),
                                  width: getSize(18),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.img20238,
                                  height: getVerticalSize(14),
                                  width: getHorizontalSize(80),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftOnprimary,
                                  height: getSize(18),
                                  width: getSize(18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 27,
                              right: 12,
                              bottom: 9,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: getVerticalSize(237),
                                  width: getHorizontalSize(79),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                              ),
                                              child: Text(
                                                "lbl149".tr,
                                                style: CustomTextStyles
                                                    .titleMedium16,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                top: 26,
                                              ),
                                              child: Text(
                                                "lbl_302".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray50002,
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(25),
                                              width: getHorizontalSize(79),
                                              margin: getMargin(
                                                top: 23,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgVideocamera,
                                                    height: getVerticalSize(25),
                                                    width:
                                                        getHorizontalSize(79),
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 15,
                                                      ),
                                                      child: Text(
                                                        "lbl_62".tr,
                                                        style: theme.textTheme
                                                            .bodySmall,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                top: 24,
                                              ),
                                              child: Text(
                                                "lbl_133".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                top: 29,
                                              ),
                                              child: Text(
                                                "lbl_203".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                top: 28,
                                              ),
                                              child: Text(
                                                "lbl_272".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            right: 12,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl150".tr,
                                                style: CustomTextStyles
                                                    .titleMedium16,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 25,
                                                  ),
                                                  child: Text(
                                                    "lbl_312".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallOnPrimary,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 29,
                                                ),
                                                child: Text(
                                                  "lbl_72".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 29,
                                                ),
                                                child: Text(
                                                  "lbl_142".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 28,
                                                  ),
                                                  child: Text(
                                                    "lbl_212".tr,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 29,
                                                ),
                                                child: Text(
                                                  "lbl_282".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl151".tr,
                                        style: CustomTextStyles.titleMedium16,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 25,
                                          ),
                                          child: Text(
                                            "lbl_1".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getSize(3),
                                        width: getSize(3),
                                        margin: getMargin(
                                          top: 24,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_82".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "lbl_152".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "lbl_222".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "lbl_292".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(236),
                                  width: getHorizontalSize(81),
                                  margin: getMargin(
                                    left: 13,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: getVerticalSize(236),
                                          width: getHorizontalSize(81),
                                          child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: getPadding(
                                                    bottom: 39,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        height:
                                                            getVerticalSize(25),
                                                        width:
                                                            getHorizontalSize(
                                                                81),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMenu,
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      81),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 13,
                                                                ),
                                                                child: Text(
                                                                  "lbl_162".tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallOnPrimaryContainer,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height:
                                                            getVerticalSize(25),
                                                        width:
                                                            getHorizontalSize(
                                                                81),
                                                        margin: getMargin(
                                                          top: 19,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMenuDeepPurpleA200,
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      81),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 12,
                                                                ),
                                                                child: Text(
                                                                  "lbl_232".tr,
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
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 13,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "lbl152".tr,
                                                        style: CustomTextStyles
                                                            .titleMedium16,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 25,
                                                        ),
                                                        child: Text(
                                                          "lbl_23".tr,
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 24,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                      1),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                left: 2,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: appTheme
                                                                    .deepOrangeA200,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                      1),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "lbl_92".tr,
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    right: 12,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "lbl153".tr,
                                                          style: CustomTextStyles
                                                              .titleMedium16,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 25,
                                                          ),
                                                          child: Text(
                                                            "lbl_33".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(3),
                                                        width: getSize(3),
                                                        margin: getMargin(
                                                          top: 24,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onError,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                1),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(3),
                                                        width: getSize(3),
                                                        margin: getMargin(
                                                          left: 5,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .deepOrangeA200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                1),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                          height: getSize(3),
                                                          width: getSize(3),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .deepPurpleA200,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                  1),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_103".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(3),
                                                        width: getSize(3),
                                                        margin: getMargin(
                                                          left: 5,
                                                          top: 18,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .deepPurpleA200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                1),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 7,
                                                          ),
                                                          child: Text(
                                                            "lbl_172".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 28,
                                                        ),
                                                        child: Text(
                                                          "lbl_242".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimaryContainer,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 29,
                                                        ),
                                                        child: Text(
                                                          "lbl_312".tr,
                                                          style: theme.textTheme
                                                              .bodySmall,
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
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                          ),
                                          child: Text(
                                            "lbl_302".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl154".tr,
                                        style: CustomTextStyles.titleMedium16,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 25,
                                        ),
                                        child: Text(
                                          "lbl_43".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 29,
                                          ),
                                          child: Text(
                                            "lbl_112".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "lbl_182".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "lbl_252".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 29,
                                          ),
                                          child: Text(
                                            "lbl_1".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray50002,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 26,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl155".tr,
                                        style: CustomTextStyles.titleMedium16,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 26,
                                        ),
                                        child: Text(
                                          "lbl_52".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "lbl_122".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "lbl_192".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "lbl_262".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "lbl_23".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray50002,
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
                  CustomElevatedButton(
                    text: "lbl156".tr,
                    margin: getMargin(
                      left: 16,
                      top: 36,
                      right: 16,
                    ),
                    alignment: Alignment.center,
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
