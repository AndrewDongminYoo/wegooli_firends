// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';
import 'models/_model.dart';

class DashChatWithFriendsPage extends StatelessWidget {
  DashChatWithFriendsPage({Key? key})
      : super(
          key: key,
        );

  final DashChatWithFriendsController controller =
      Get.put(DashChatWithFriendsController(DashChatWithFriendsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(
            45,
          ),
          centerTitle: true,
          title: AppbarImage(
            height: getVerticalSize(
              17,
            ),
            width: getHorizontalSize(
              88,
            ),
            svgPath: Assets.svg.imgFriendsTypo.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 20,
            right: 16,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Text(
                  "lbl63".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.04,
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl64".tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL17.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    95,
                  ),
                  getVerticalSize(
                    34,
                  ),
                ))),
                buttonTextStyle: theme.textTheme.bodyMedium!,
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 35,
                          bottom: 1,
                        ),
                        child: Text(
                          "12:20 PM",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallGray400.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.02,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 10,
                        ),
                        padding: getPadding(
                          left: 15,
                          top: 6,
                          right: 15,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.fill1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            210,
                          ),
                          child: Text(
                            "msg7".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.03,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 22,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: Assets.images.imgAvatar2.path,
                            height: getSize(
                              32,
                            ),
                            width: getSize(
                              32,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.imgAvatar2.path,
                            height: getSize(
                              32,
                            ),
                            width: getSize(
                              32,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                            margin: getMargin(
                              top: 101,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 5,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl44".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.bodySmallBlack900.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.02,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Row(
                                children: [
                                  CustomElevatedButton(
                                    text: "msg8".tr,
                                    buttonStyle: CustomButtonStyles
                                        .fillBluegray30033
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(
                                      getHorizontalSize(
                                        192,
                                      ),
                                      getVerticalSize(
                                        34,
                                      ),
                                    ))),
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumBlack900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 19,
                                    ),
                                    child: Text(
                                      "12:22 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallInterGray400_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: getPadding(
                                  top: 19,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 17,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "12:25 PM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmallGray400
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.02,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      text: "lbl65".tr,
                                      margin: getMargin(
                                        left: 5,
                                      ),
                                      buttonStyle: CustomButtonStyles
                                          .fillPrimaryTL17
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                        getHorizontalSize(
                                          168,
                                        ),
                                        getVerticalSize(
                                          34,
                                        ),
                                      ))),
                                      buttonTextStyle:
                                          theme.textTheme.bodyMedium!,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 26,
                              ),
                              child: Text(
                                "lbl44".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    CustomTextStyles.bodySmallBlack900.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.02,
                                  ),
                                ),
                              ),
                            ),
                            CustomElevatedButton(
                              text: "msg9".tr,
                              margin: getMargin(
                                top: 3,
                              ),
                              buttonStyle: CustomButtonStyles.fillBluegray30033
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                getHorizontalSize(
                                  215,
                                ),
                                getVerticalSize(
                                  34,
                                ),
                              ))),
                              buttonTextStyle:
                                  CustomTextStyles.bodyMediumBlack900,
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
                  left: 37,
                  top: 5,
                ),
                child: Row(
                  children: [
                    CustomElevatedButton(
                      text: "lbl66".tr,
                      buttonStyle:
                          CustomButtonStyles.fillBluegray30033.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          138,
                        ),
                        getVerticalSize(
                          34,
                        ),
                      ))),
                      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 17,
                        bottom: 1,
                      ),
                      child: Text(
                        "12:15 PM",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray400.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.02,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: Assets.svg.imgCamera.path,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 6,
                        bottom: 6,
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        controller: controller.group1104Controller,
                        margin: getMargin(
                          left: 8,
                        ),
                        contentPadding: getPadding(
                          left: 18,
                          top: 9,
                          right: 18,
                          bottom: 9,
                        ),
                        textStyle: CustomTextStyles.bodyMediumGray50001,
                        hintText: "lbl67".tr,
                        hintStyle: CustomTextStyles.bodyMediumGray50001,
                        filled: true,
                        fillColor: appTheme.blueGray30033,
                        defaultBorderDecoration:
                            TextFormFieldStyleHelper.fillBluegray30033,
                        enabledBorderDecoration:
                            TextFormFieldStyleHelper.fillBluegray30033,
                        focusedBorderDecoration:
                            TextFormFieldStyleHelper.fillBluegray30033,
                        disabledBorderDecoration:
                            TextFormFieldStyleHelper.fillBluegray30033,
                      ),
                    ),
                    CustomImageView(
                      svgPath: Assets.svg.imgSend.path,
                      height: getVerticalSize(
                        22,
                      ),
                      width: getHorizontalSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 8,
                        top: 6,
                        bottom: 6,
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
