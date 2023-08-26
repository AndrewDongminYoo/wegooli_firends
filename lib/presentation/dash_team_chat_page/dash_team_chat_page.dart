import 'controller/dash_team_chat_controller.dart';
import 'models/dash_team_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

class DashTeamChatPage extends StatelessWidget {
  DashTeamChatPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DashTeamChatController controller =
      Get.put(DashTeamChatController(DashTeamChatModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  bottom: 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: getPadding(
                        left: 136,
                        top: 14,
                        right: 136,
                        bottom: 14,
                      ),
                      decoration: AppDecoration.outlineBluegray30033,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFriends,
                        height: getVerticalSize(17),
                        width: getHorizontalSize(88),
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
                          "lbl93".tr,
                          style: CustomTextStyles.titleMediumBlack900,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: getVerticalSize(34),
                      width: getHorizontalSize(95),
                      text: "lbl94".tr,
                      margin: getMargin(
                        top: 22,
                        right: 16,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 42,
                          top: 5,
                          right: 16,
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
                                "lbl_12_20_pm".tr,
                                style: CustomTextStyles.bodySmallOnError,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                left: 10,
                              ),
                              padding: getPadding(
                                left: 15,
                                top: 6,
                                right: 10,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(210),
                                child: Text(
                                  "msg18".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 20,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 61,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse1,
                                  height: getSize(32),
                                  width: getSize(32),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(16),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse1,
                                  height: getSize(32),
                                  width: getSize(32),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(16),
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
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl39".tr,
                                    style: CustomTextStyles.bodySmallBlack900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      right: 43,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomElevatedButton(
                                          height: getVerticalSize(34),
                                          width: getHorizontalSize(180),
                                          text: "msg19".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillBlueGray,
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumBlack900,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                            top: 19,
                                          ),
                                          child: Text(
                                            "lbl_12_22_pm".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterOnError,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 17,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_12_25_pm".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnError,
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(168),
                                            text: "lbl95".tr,
                                            margin: getMargin(
                                              left: 5,
                                            ),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL17,
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
                                      "lbl39".tr,
                                      style: CustomTextStyles.bodySmallBlack900,
                                    ),
                                  ),
                                  CustomElevatedButton(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(215),
                                    text: "msg20".tr,
                                    margin: getMargin(
                                      top: 3,
                                    ),
                                    buttonStyle:
                                        CustomButtonStyles.fillBlueGray,
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumBlack900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomElevatedButton(
                                          height: getVerticalSize(34),
                                          width: getHorizontalSize(138),
                                          text: "lbl96".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillBlueGray,
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumBlack900,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                            top: 17,
                                          ),
                                          child: Text(
                                            "lbl_12_15_pm".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnError,
                                          ),
                                        ),
                                      ],
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
                        left: 16,
                        top: 124,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCamera,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(
                              top: 6,
                              bottom: 6,
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              controller: controller.chatinputoneController,
                              margin: getMargin(
                                left: 8,
                              ),
                              hintText: "lbl97".tr,
                              hintStyle: CustomTextStyles.bodyMediumGray50001,
                              textInputAction: TextInputAction.done,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field cannot be empty';
                                }
                                return null;
                              },
                              contentPadding: getPadding(
                                left: 18,
                                top: 9,
                                right: 18,
                                bottom: 9,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlueGray,
                              filled: true,
                              fillColor: appTheme.blueGray30033,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgSend,
                            height: getVerticalSize(22),
                            width: getHorizontalSize(24),
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
          ),
        ),
      ),
    );
  }
}
