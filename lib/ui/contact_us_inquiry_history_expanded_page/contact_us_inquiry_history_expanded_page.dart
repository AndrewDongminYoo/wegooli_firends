// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import 'controller/contact_us_inquiry_history_expanded_controller.dart';
import 'models/contact_us_inquiry_history_expanded_model.dart';

// ignore: must_be_immutable
class ContactUsInquiryHistoryExpandedPage extends StatelessWidget {
  ContactUsInquiryHistoryExpandedPage({Key? key}) : super(key: key);

  ContactUsInquiryHistoryExpandedController controller = Get.put(
      ContactUsInquiryHistoryExpandedController(
          ContactUsInquiryHistoryExpandedModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 15.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'msg14'.tr,
                                    style: defaultTextTheme.titleSmall,
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    'lbl_2023_08_23'.tr,
                                    style: defaultTextTheme.bodySmall!.copyWith(
                                      color: defaultColors.onPrimary
                                          .withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              ),
                              CustomOutlinedButton(
                                width: 52.h,
                                text: 'lbl139'.tr,
                                margin: EdgeInsets.only(
                                  left: 42.h,
                                  top: 4.v,
                                  bottom: 2.v,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 9.v,
                                  bottom: 7.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          const Divider(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 15.v,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'msg14'.tr,
                                      style: defaultTextTheme.titleSmall,
                                    ),
                                    SizedBox(height: 3.v),
                                    Text(
                                      'lbl_2023_08_23'.tr,
                                      style:
                                          defaultTextTheme.bodySmall!.copyWith(
                                        color: defaultColors.onPrimary
                                            .withOpacity(0.4),
                                      ),
                                    ),
                                  ],
                                ),
                                CustomOutlinedButton(
                                  width: 65.h,
                                  text: 'lbl140'.tr,
                                  margin: EdgeInsets.only(
                                    left: 29.h,
                                    top: 4.v,
                                    bottom: 2.v,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    top: 9.v,
                                    bottom: 7.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 322.h,
                            margin: EdgeInsets.only(
                              left: 1.h,
                              top: 7.v,
                              right: 7.h,
                            ),
                            child: Text(
                              'msg15'.tr,
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                              style: defaultTextTheme.bodySmall!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 10.v,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSubdirectoryarrowright,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    'lbl141'.tr,
                                    style: defaultTextTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            child: Container(
                              width: 302.h,
                              margin: EdgeInsets.only(
                                left: 21.h,
                                top: 5.v,
                                right: 7.h,
                              ),
                              child: Text(
                                'msg16'.tr,
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: defaultTextTheme.bodySmall!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          const Divider(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 166.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 15.v),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'msg14'.tr,
                                            style: defaultTextTheme.titleSmall,
                                          ),
                                          SizedBox(height: 3.v),
                                          Text(
                                            'lbl_2023_08_23'.tr,
                                            style: defaultTextTheme.bodySmall!
                                                .copyWith(
                                              color: defaultColors.onPrimary
                                                  .withOpacity(0.4),
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomOutlinedButton(
                                        width: 65.h,
                                        text: 'lbl140'.tr,
                                        margin: EdgeInsets.only(
                                          left: 29.h,
                                          top: 4.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 10.h,
                                          top: 9.v,
                                          bottom: 7.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 17.v),
                                  const Divider(),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 29.v,
                              ),
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
                                buttonTextStyle:
                                    defaultTextTheme.titleMedium!.copyWith(
                                  color: const Color(0xFFB0B2BC),
                                  fontSize: 18.fSize,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
