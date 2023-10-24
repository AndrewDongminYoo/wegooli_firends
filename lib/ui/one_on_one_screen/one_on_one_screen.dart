// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/data/common/dropdown_data.dart';
import '/gen/assets.gen.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/drop_down.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/one_on_one_controller.dart';
import 'widgets/add_photo_item_widget.dart';

class OneOnOneScreen extends StatelessWidget {
  const OneOnOneScreen({super.key});
  static const routeName = '/one_on_one_screen';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OneOnOneController());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: AppbarTitle(text: '1:1 문의하기'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 12.v),
                            child: CustomImageView(
                              svgPath: Assets.svg.icoCaretDownGray.path,
                            ),
                          ),
                          margin: EdgeInsets.only(right: 16.h),
                          hintText: '문의 유형을 선택해주세요.',
                          hintStyle: textTheme.bodyLarge!
                              .tint(const Color(0xFF8F9199)),
                          options: controller.oneOnOne.value.inquiryTypes.value,
                          contentPadding: EdgeInsets.only(
                            left: 10.h,
                            top: 14.v,
                            bottom: 14.v,
                          ),
                          onChanged: (DropdownData value) {
                            controller.oneOnOne.value.inquiryTypes
                                .onSelected(value);
                            controller.inquiryType = value;
                          },
                        ),
                        CustomTextFormField(
                          controller: controller.inquiryContent,
                          margin: EdgeInsets.only(
                            top: 21.v,
                            right: 16.h,
                          ),
                          hintText: '내용을 입력해주세요.',
                          hintStyle: textTheme.bodyLarge!
                              .tint(const Color(0xFF8E9199)),
                          textInputAction: TextInputAction.done,
                          maxLines: 15,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 14.v,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Text(
                          '이미지 첨부',
                          style: textTheme.titleMedium!
                              .copyWith(fontSize: TextSize.lg.fSize),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 78.v,
                            child: Obx(
                              () => ListView.separated(
                                padding: EdgeInsets.only(
                                  left: 76.h,
                                  top: 7.v,
                                  right: 45.h,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 5.h);
                                },
                                itemCount: controller
                                    .oneOnOne.value.items.value.length,
                                itemBuilder: (context, index) {
                                  final model = controller
                                      .oneOnOne.value.items.value[index];
                                  return AddPhotoWidget(model);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 29.v,
          ),
          decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
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
                ).noEffect,
              ),
              CustomElevatedButton(
                width: 216.h,
                text: '문의하기',
                margin: EdgeInsets.only(left: 8.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
