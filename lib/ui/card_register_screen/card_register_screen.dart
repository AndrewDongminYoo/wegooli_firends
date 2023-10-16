// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/card_register_controller.dart';

class CardRegisterScreen extends GetWidget<CardRegisterController> {
  const CardRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: 'lbl124'.tr)),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 30.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, right: 16.h, bottom: 5.v),
                          child: Column(children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text('lbl144'.tr,
                                            style:
                                                defaultTextTheme.titleMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, bottom: 2.v),
                                        child: Text('lbl67'.tr,
                                            style: defaultTextTheme.titleMedium!
                                                .copyWith(
                                              color: const Color(0xFFDB4646),
                                            )))
                                  ]),
                                  SizedBox(height: 4.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.cardnumbervalueController,
                                      hintText: 'msg_0000_0000_0000'.tr,
                                      hintStyle:
                                          defaultTextTheme.bodyLarge!.copyWith(
                                        color: const Color(0xFF8E9199),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 14.v))
                                ]),
                            SizedBox(height: 26.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text('lbl145'.tr,
                                            style:
                                                defaultTextTheme.titleMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, bottom: 2.v),
                                        child: Text('lbl67'.tr,
                                            style: defaultTextTheme.titleMedium!
                                                .copyWith(
                                              color: const Color(0xFFDB4646),
                                            )))
                                  ]),
                                  SizedBox(height: 4.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.expirationdatevController,
                                      hintText: 'lbl_mm_yy'.tr,
                                      hintStyle:
                                          defaultTextTheme.bodyLarge!.copyWith(
                                        color: const Color(0xFF8E9199),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 14.v))
                                ]),
                            SizedBox(height: 26.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text('lbl146'.tr,
                                            style:
                                                defaultTextTheme.titleMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, bottom: 2.v),
                                        child: Text('lbl67'.tr,
                                            style: defaultTextTheme.titleMedium!
                                                .copyWith(
                                              color: const Color(0xFFDB4646),
                                            )))
                                  ]),
                                  SizedBox(height: 4.v),
                                  CustomTextFormField(
                                      controller: controller.zipcodeController,
                                      hintText: 'lbl_980709'.tr,
                                      hintStyle:
                                          defaultTextTheme.bodyLarge!.copyWith(
                                        color: const Color(0xFF8E9199),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 14.v),
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineGrayTL5,
                                      fillColor: const Color(0x33A4A8AF))
                                ]),
                            SizedBox(height: 26.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text('lbl_23'.tr,
                                            style:
                                                defaultTextTheme.titleMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, bottom: 2.v),
                                        child: Text('lbl67'.tr,
                                            style: defaultTextTheme.titleMedium!
                                                .copyWith(
                                              color: const Color(0xFFDB4646),
                                            )))
                                  ]),
                                  SizedBox(height: 4.v),
                                  CustomTextFormField(
                                      controller: controller.edittextController,
                                      textInputAction: TextInputAction.done)
                                ])
                          ]))))
            ])),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
          decoration: BoxDecoration(
            color: defaultColors.onPrimaryContainer,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: const Offset(
                  2,
                  2,
                ),
              ),
            ],
          ),
          child: CustomElevatedButton(
              text: 'lbl138'.tr,
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.h),
                ),
              ),
              buttonTextStyle: defaultTextTheme.titleMedium!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontSize: 18.fSize,
              )),
        ),
      ),
    );
  }
}
