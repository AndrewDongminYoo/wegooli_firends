// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/data/common/dropdown_data.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/drop_down.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/license_register_controller.dart';

class LicenseRegisterScreen extends StatelessWidget {
  const LicenseRegisterScreen({super.key});
  static const routeName = '/license_register';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LicenseRegisterController());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 50.v,
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: AppbarTitle(text: '운전면허 등록'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Container(
                          width: 360.h,
                          height: 200.v,
                          padding: EdgeInsets.symmetric(
                            horizontal: 49.h,
                            vertical: 20.v,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              const BoxDecoration(color: Color(0xFFE2E8F6)),
                          child: CustomImageView(
                            imagePath: Assets.images.imgLicenseExample.path,
                            width: 262.h,
                            height: 160.v,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        SizedBox(
                          height: 58.v,
                          width: 328.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text(
                                        '면허증 종류',
                                        style: textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    CustomDropDown(
                                      icon: Container(
                                        margin: EdgeInsets.only(left: 30.h),
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
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464A70),
                                    border: Border.all(
                                      color: lightTheme.onPrimaryContainer,
                                      width: 1.h,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                                  child: Text(
                                    'A',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: lightTheme.primary,
                                      fontSize: 9.fSize,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 30.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 58.v,
                                width: 160.h,
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
                                                EdgeInsets.only(left: 19.h),
                                            child: Text(
                                              '면허증 번호',
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          SizedBox(height: 3.v),
                                          Container(
                                            width: 160.h,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 9.v,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color:
                                                      const Color(0xFFB0B2BC),
                                                  width: 1.h,
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
                                                  size: 18.adaptSize,
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
                                          horizontal: 4.h,
                                          vertical: 2.v,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF464A70),
                                          border: Border.all(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            width: 1.h,
                                          ),
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder10,
                                        ),
                                        child: Text(
                                          'B',
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            color: lightTheme.primary,
                                            fontSize: 9.fSize,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomDropDown(
                                width: 160.h,
                                icon: Container(
                                  margin: EdgeInsets.only(left: 30.h),
                                  child: CustomImageView(
                                    svgPath: Assets.svg.icoCaretDown.path,
                                  ),
                                ),
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  top: 19.v,
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
                            left: 19.h,
                            right: 19.h,
                            top: 10.v,
                          ),
                          hintText: '면허증 번호를 입력하세요.',
                        ),
                        SizedBox(height: 30.v),
                        SizedBox(
                          height: 58.v,
                          width: 328.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text(
                                        '적성기간 만료일',
                                        style: textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
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
                                    horizontal: 4.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464A70),
                                    border: Border.all(
                                      color: lightTheme.onPrimaryContainer,
                                      width: 1.h,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                                  child: Text(
                                    'C',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: lightTheme.primary,
                                      fontSize: 9.fSize,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.v),
                        SizedBox(
                          height: 58.v,
                          width: 328.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text(
                                        '면허 발급 일자',
                                        style: textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
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
                                    horizontal: 4.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464A70),
                                    border: Border.all(
                                      color: lightTheme.onPrimaryContainer,
                                      width: 1.h,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                                  child: Text(
                                    'D',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: lightTheme.primary,
                                      fontSize: 9.fSize,
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
          height: 48.v,
          text: '등록 완료',
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 16.v,
          ),
          buttonStyle: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF3F3F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.h),
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
