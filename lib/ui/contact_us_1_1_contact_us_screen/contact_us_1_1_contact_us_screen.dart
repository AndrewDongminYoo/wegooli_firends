// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../contact_us_1_1_contact_us_screen/widgets/listaddphotoalt_item_widget.dart';
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/contact_us_1_1_contact_us_controller.dart';

class ContactUs11ContactUsScreen
    extends GetWidget<ContactUs11ContactUsController> {
  const ContactUs11ContactUsScreen({Key? key}) : super(key: key);

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
            title: AppbarTitle(text: 'lbl_1_12'.tr)),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 27.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomDropDown(
                                    icon: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCaretdownGray800)),
                                    margin: EdgeInsets.only(right: 16.h),
                                    hintText: 'lbl147'.tr,
                                    hintStyle:
                                        defaultTextTheme.bodyLarge!.copyWith(
                                      color: const Color(0xFF8F9199),
                                    ),
                                    items: controller.contactUs11ContactUs.value
                                        .choices.value,
                                    contentPadding: EdgeInsets.only(
                                        left: 10.h, top: 14.v, bottom: 14.v),
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                CustomTextFormField(
                                    controller:
                                        controller.groupTwentySevenController,
                                    margin:
                                        EdgeInsets.only(top: 21.v, right: 16.h),
                                    hintText: 'lbl148'.tr,
                                    hintStyle:
                                        defaultTextTheme.bodyLarge!.copyWith(
                                      color: const Color(0xFF8E9199),
                                    ),
                                    textInputAction: TextInputAction.done,
                                    maxLines: 15,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v)),
                                SizedBox(height: 21.v),
                                Text('lbl149'.tr,
                                    style:
                                        defaultTextTheme.titleMedium!.copyWith(
                                      fontSize: 18.fSize,
                                    )),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: 78.v,
                                        child: Obx(() => ListView.separated(
                                            padding: EdgeInsets.only(
                                                left: 76.h,
                                                top: 7.v,
                                                right: 45.h),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(width: 5.h);
                                            },
                                            itemCount: controller
                                                .contactUs11ContactUs
                                                .value
                                                .listaddphotoaltItemList
                                                .value
                                                .length,
                                            itemBuilder: (context, index) {
                                              final model = controller
                                                  .contactUs11ContactUs
                                                  .value
                                                  .listaddphotoaltItemList
                                                  .value[index];
                                              return ListaddphotoaltItemWidget(
                                                  model);
                                            }))))
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
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomElevatedButton(
                    width: 104.h,
                    text: 'lbl32'.tr,
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB9BCC3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.h),
                      ),
                    )),
                CustomElevatedButton(
                    width: 216.h,
                    text: 'lbl136'.tr,
                    margin: EdgeInsets.only(left: 8.h))
              ]),
        ),
      ),
    );
  }
}
