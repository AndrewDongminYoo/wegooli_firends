// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/data/common/dropdown_data.dart';
import '/gen/assets.gen.dart';
import '/layout/unfocused.dart';
import '/routes/app_navigation.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/drop_down.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/one_on_one_controller.dart';
import 'widgets/add_photo_item_widget.dart';

class OneOnOneScreen extends StatelessWidget {
  const OneOnOneScreen({super.key});
  static const routeName = '/one_on_one_screen';

  @override
  Widget build(BuildContext context) {
    final controller = OneOnOneController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '1:1 문의하기'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              SizedBox(height: 27.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      bottom: 5.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.w, 12.h, 10.w, 12.h),
                            child: CustomImageView(
                              svgPath: Assets.svg.icoCaretDownGray.path,
                            ),
                          ),
                          margin: EdgeInsets.only(right: 16.w),
                          hintText: '문의 유형을 선택해주세요.',
                          hintStyle: textTheme.bodyLarge!
                              .tint(const Color(0xFF8F9199)),
                          options: controller.oneOnOne.value.inquiryTypes.value,
                          contentPadding: EdgeInsets.only(
                            left: 10.w,
                            top: 14.h,
                            bottom: 14.h,
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
                            top: 21.h,
                            right: 16.w,
                          ),
                          hintText: '내용을 입력해주세요.',
                          hintStyle: textTheme.bodyLarge!
                              .tint(const Color(0xFF8E9199)),
                          textInputAction: TextInputAction.done,
                          maxLines: 15,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 14.h,
                          ),
                        ),
                        SizedBox(height: 21.h),
                        Text(
                          '이미지 첨부',
                          style: textTheme.titleMedium!
                              .copyWith(fontSize: TextSize.lg.sp),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 78.h,
                            child: Obx(
                              () => ListView.separated(
                                padding: EdgeInsets.only(
                                  left: 76.w,
                                  top: 7.h,
                                  right: 45.w,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 5.w);
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
            left: 16.w,
            right: 16.w,
            bottom: 29.h,
          ),
          decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                isDisabled: !controller.canSubmit.value,
                onTap: context.safePop,
                width: 104.w,
                text: '취소',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB9BCC3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.w),
                  ),
                ).noEffect,
              ),
              CustomElevatedButton(
                isDisabled: !controller.canSubmit.value,
                // TODO: 문의하기 내용 등록
                onTap: () =>
                    print(controller.oneOnOne.value.inquiryTypes.value),
                width: 216.w,
                text: '문의하기',
                margin: EdgeInsets.only(left: 8.w),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
