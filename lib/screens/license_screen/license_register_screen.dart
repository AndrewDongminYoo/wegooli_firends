// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';
import '/gen/assets.gen.dart';
import '/layout/unfocused.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/drop_down.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/license_register_controller.dart';

class LicenseRegisterScreen extends StatelessWidget {
  const LicenseRegisterScreen({super.key});
  static const routeName = '/license_register';

  @override
  Widget build(BuildContext context) {
    final controller = LicenseRegisterController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 50.h,
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '운전면허 등록'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: UnfocusedForm(
                      canSubmit: controller.canSubmit,
                      children: [
                        Container(
                          width: 360.w,
                          height: 200.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 49.w,
                            vertical: 20.h,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              const BoxDecoration(color: Color(0xFFE2E8F6)),
                          child: CustomImageView(
                            imagePath: Assets.images.imgLicenseExample.path,
                            width: 262.w,
                            height: 160.h,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        SizedBox(
                          height: 58.h,
                          width: 328.w,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.w),
                                      child: Text(
                                        '면허증 종류',
                                        style: textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 3.h),
                                    CustomDropDown(
                                      icon: Container(
                                        margin: EdgeInsets.only(left: 30.w),
                                        child: CustomImageView(
                                          svgPath: Assets.svg.icoCaretDown.path,
                                        ),
                                      ),
                                      hintText: '면허증 종류를 선택하세요.',
                                      options: controller
                                          .license.value.licenseTypes.value,
                                      onChanged: (DropdownData value) {
                                        controller.license.value.licenseTypes
                                            .onSelected(value);
                                        controller.licenseType = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.w,
                                    vertical: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464A70),
                                    border: Border.all(
                                      color: lightTheme.onPrimaryContainer,
                                      width: 1.w,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                                  child: Text(
                                    'A',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: lightTheme.primary,
                                      fontSize: 9.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 30.h,
                            right: 16.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 58.h,
                                width: 160.w,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 19.w),
                                            child: Text(
                                              '면허증 번호',
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          SizedBox(height: 3.h),
                                          Container(
                                            width: 160.w,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 9.h,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color:
                                                      const Color(0xFFB0B2BC),
                                                  width: 1.w,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '지역',
                                                  style: textTheme.bodyLarge!
                                                      .copyWith(
                                                    color:
                                                        const Color(0xFFB0B2BC),
                                                  ),
                                                ),
                                                customIcon(
                                                  Assets.svg.icoCaretDown.path,
                                                  size: 18.w,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                          vertical: 2.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF464A70),
                                          border: Border.all(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            width: 1.w,
                                          ),
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder10,
                                        ),
                                        child: Text(
                                          'B',
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            color: lightTheme.primary,
                                            fontSize: 9.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomDropDown(
                                width: 160.w,
                                icon: Container(
                                  margin: EdgeInsets.only(left: 30.w),
                                  child: CustomImageView(
                                    svgPath: Assets.svg.icoCaretDown.path,
                                  ),
                                ),
                                margin: EdgeInsets.only(
                                  left: 8.w,
                                  top: 19.h,
                                ),
                                options:
                                    controller.license.value.issuedYears.value,
                                onChanged: (DropdownData value) {
                                  controller.license.value.issuedYears
                                      .onSelected(value);
                                  controller.issuedYear = value;
                                },
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                          controller: controller.licenseNums,
                          margin: EdgeInsets.only(
                            left: 19.w,
                            right: 19.w,
                            top: 10.h,
                          ),
                          hintText: '면허증 번호를 입력하세요.',
                        ),
                        SizedBox(height: 30.h),
                        SizedBox(
                          height: 58.h,
                          width: 328.w,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.w),
                                      child: Text(
                                        '적성기간 만료일',
                                        style: textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 3.h),
                                    CustomTextFormField(
                                      controller: controller.validPeriod,
                                      hintText: '적성기간 만료일(YYMMDD)을 입력해주세요.',
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                    vertical: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464A70),
                                    border: Border.all(
                                      color: lightTheme.onPrimaryContainer,
                                      width: 1.w,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                                  child: Text(
                                    'C',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: lightTheme.primary,
                                      fontSize: 9.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        SizedBox(
                          height: 58.h,
                          width: 328.w,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.w),
                                      child: Text(
                                        '면허 발급 일자',
                                        style: textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 3.h),
                                    CustomTextFormField(
                                      controller: controller.firstIssued,
                                      hintText: '면허 발급 일자(YYMMDD)를 입력해주세요.',
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                    vertical: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464A70),
                                    border: Border.all(
                                      color: lightTheme.onPrimaryContainer,
                                      width: 1.w,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                                  child: Text(
                                    'D',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: lightTheme.primary,
                                      fontSize: 9.sp,
                                    ),
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
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          isDisabled: !controller.canSubmit.value,
          // TODO: 운전면허증 등록
          onTap: controller.update,
          height: 48.h,
          text: '등록 완료',
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
          ),
          buttonStyle: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF3F3F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.w),
            ),
          ).noEffect,
          buttonTextStyle: textTheme.titleSmall!.copyWith(
            color: const Color(0xFFB0B2BC),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
