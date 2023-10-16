// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/send_bird_chat_controller.dart';
import 'models/send_bird_chat_model.dart';

// ignore: must_be_immutable
class SendBirdChatPage extends StatelessWidget {
  SendBirdChatPage({Key? key}) : super(key: key);

  SendBirdChatController controller =
      Get.put(SendBirdChatController(SendBirdChatModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: AppbarImage1(
            svgPath: ImageConstant.imgFriends,
          ),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
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
                      'lbl107'.tr,
                      style: defaultTextTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 18.fSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                    height: 34.v,
                    width: 95.h,
                    text: 'lbl108'.tr,
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: defaultColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.h),
                      ),
                    ),
                    buttonTextStyle: defaultTextTheme.bodyMedium!.copyWith(
                      fontSize: 15.fSize,
                    ),
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
                            style: defaultTextTheme.bodySmall!.copyWith(
                              color: const Color(0xFFB9BCC3),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: defaultColors.primary,
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: SizedBox(
                            width: 210.h,
                            child: Text(
                              'msg11'.tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: defaultTextTheme.bodyMedium!.copyWith(
                                fontSize: 15.fSize,
                              ),
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
                                'lbl41'.tr,
                                style: defaultTextTheme.bodySmall!.copyWith(
                                  color: Colors.black,
                                ),
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
                                      buttonStyle: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0x33A4A8AF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.h),
                                        ),
                                      ),
                                      buttonTextStyle:
                                          defaultTextTheme.bodyMedium!.copyWith(
                                        color: Colors.black,
                                        fontSize: 15.fSize,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 5.h,
                                        top: 19.v,
                                      ),
                                      child: Text(
                                        'lbl_12_22_pm'.tr,
                                        style: defaultTextTheme.bodySmall!
                                            .copyWith(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFFB9BCC3),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 19.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 17.v,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        'lbl_12_25_pm'.tr,
                                        style: defaultTextTheme.bodySmall!
                                            .copyWith(
                                          color: const Color(0xFFB9BCC3),
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      height: 34.v,
                                      width: 168.h,
                                      text: 'lbl109'.tr,
                                      margin: EdgeInsets.only(left: 5.h),
                                      buttonStyle: ElevatedButton.styleFrom(
                                        backgroundColor: defaultColors.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.h),
                                        ),
                                      ),
                                      buttonTextStyle:
                                          defaultTextTheme.bodyMedium!.copyWith(
                                        fontSize: 15.fSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 26.v),
                              Text(
                                'lbl41'.tr,
                                style: defaultTextTheme.bodySmall!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              CustomElevatedButton(
                                height: 34.v,
                                width: 215.h,
                                text: 'msg13'.tr,
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0x33A4A8AF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17.h),
                                  ),
                                ),
                                buttonTextStyle:
                                    defaultTextTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                  fontSize: 15.fSize,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Row(
                                children: [
                                  CustomElevatedButton(
                                    height: 34.v,
                                    width: 138.h,
                                    text: 'lbl110'.tr,
                                    buttonStyle: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0x33A4A8AF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17.h),
                                      ),
                                    ),
                                    buttonTextStyle:
                                        defaultTextTheme.bodyMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: 15.fSize,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 17.v,
                                    ),
                                    child: Text(
                                      'lbl_12_15_pm'.tr,
                                      style:
                                          defaultTextTheme.bodySmall!.copyWith(
                                        color: const Color(0xFFB9BCC3),
                                      ),
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
                        child: CustomTextFormField(
                          controller: controller.chatinputoneController,
                          margin: EdgeInsets.only(left: 8.h),
                          hintText: 'lbl111'.tr,
                          hintStyle: defaultTextTheme.bodyMedium!.copyWith(
                            color: const Color(0xFF91969D),
                            fontSize: 15.fSize,
                          ),
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.h,
                            vertical: 9.v,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillBlueGray,
                          fillColor: const Color(0x33A4A8AF),
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
      ),
    );
  }
}
