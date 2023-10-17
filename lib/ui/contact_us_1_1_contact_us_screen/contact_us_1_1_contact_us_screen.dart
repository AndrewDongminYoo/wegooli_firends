// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../contact_us_1_1_contact_us_screen/widgets/listaddphotoalt_item_widget.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/drop_down.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
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
            leading: CustomImageView(
              svgPath: Assets.svg.imgArrowleft.path,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '1:1 문의하기')),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
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
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 12.v),
                                child: CustomImageView(
                                    svgPath:
                                        Assets.svg.imgCaretdownGray800.path)),
                            margin: EdgeInsets.only(right: 16.h),
                            hintText: '문의 유형을 선택해주세요.',
                            hintStyle: textTheme.bodyLarge!.copyWith(
                              color: const Color(0xFF8F9199),
                            ),
                            items: controller
                                .contactUs11ContactUs.value.choices.value,
                            contentPadding: EdgeInsets.only(
                                left: 10.h, top: 14.v, bottom: 14.v),
                            onChanged: (value) {
                              controller.onSelected(value);
                            }),
                        CustomTextFormField(
                            controller: controller.groupTwentySevenController,
                            margin: EdgeInsets.only(top: 21.v, right: 16.h),
                            hintText: '내용을 입력해주세요.',
                            hintStyle: textTheme.bodyLarge!.copyWith(
                              color: const Color(0xFF8E9199),
                            ),
                            textInputAction: TextInputAction.done,
                            maxLines: 15,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 14.v)),
                        SizedBox(height: 21.v),
                        Text('이미지 첨부',
                            style: textTheme.titleMedium!.copyWith(
                              fontSize: 18.fSize,
                            )),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 78.v,
                            child: Obx(
                              () => ListView.separated(
                                  padding: EdgeInsets.only(
                                      left: 76.h, top: 7.v, right: 45.h),
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
                                    return ListaddphotoaltItemWidget(model);
                                  }),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
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
                  text: '취소',
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB9BCC3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.h),
                    ),
                  )),
              CustomElevatedButton(
                  width: 216.h,
                  text: '문의하기',
                  margin: EdgeInsets.only(left: 8.h))
            ],
          ),
        ),
      ),
    );
  }
}
