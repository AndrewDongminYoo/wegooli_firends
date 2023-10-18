// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/identity_verification_terms_bottomsheet_controller.dart';

class IdentityVerificationTermsBottomsheetScreen
    extends GetWidget<IdentityVerificationTermsBottomsheetController> {
  const IdentityVerificationTermsBottomsheetScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            height: 50.v,
            leadingWidth: 34.h,
            leading: CustomImageView(
              svgPath: Assets.svg.icoArrowLeft.path,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '본인 인증')),
        body: SizedBox(
          height: 593.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 57.v, right: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  '이름',
                                  style: textTheme.bodySmall!.copyWith(
                                    color: const Color(0xFF5D5D5D),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 2.h, bottom: 2.v),
                                  child: Text('*', style: textTheme.labelLarge))
                            ],
                          ),
                          CustomTextFormField(
                              controller: controller.nameinputone,
                              hintText: '이름을 입력해주세요.',
                              textInputAction: TextInputAction.done)
                        ],
                      ),
                      SizedBox(height: 25.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      '주민등록번호 13자리',
                                      style: textTheme.bodySmall!.copyWith(
                                        color: const Color(0xFF5D5D5D),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, bottom: 2.v),
                                      child: Text('*',
                                          style: textTheme.labelLarge))
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 9.v),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: const Color(0xFFB0B2BC),
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'YYMMDD',
                                  style: textTheme.bodyLarge!.copyWith(
                                    color: const Color(0xFFB0B2BC),
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Text('만 26세 미만은 가입이 제한됩니다.',
                                  style: textTheme.bodySmall!.copyWith(
                                    color: lightTheme.primaryContainer,
                                  ))
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 16.v, bottom: 19.v),
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color(0xFFB0B2BC),
                                    width: 1.h,
                                  ),
                                ),
                              ),
                              child: Text('NNNNNNN',
                                  style: textTheme.bodyLarge!.copyWith(
                                    color: const Color(0xFFB0B2BC),
                                  )))
                        ],
                      ),
                      SizedBox(height: 34.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      '휴대폰 정보',
                                      style: textTheme.bodySmall!.copyWith(
                                        color: const Color(0xFF5D5D5D),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, bottom: 2.v),
                                      child: Text('*',
                                          style: textTheme.labelLarge))
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.v),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: const Color(0xFFB0B2BC),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                          child: Text(
                                            '통신사',
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                              color: const Color(0xFFB0B2BC),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.icoCaretDown.path,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 43.h, bottom: 5.v))
                                      ]))
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 16.v),
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color(0xFFB0B2BC),
                                    width: 1.h,
                                  ),
                                ),
                              ),
                              child: Text('010-1234-5678',
                                  style: textTheme.bodyLarge!.copyWith(
                                    color: const Color(0xFFB0B2BC),
                                  )))
                        ],
                      ),
                      SizedBox(height: 18.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 125.h, vertical: 12.v),
                          decoration: BoxDecoration(
                              color: const Color(0xFFF3F3F6),
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Text('인증번호 발송',
                              style: textTheme.titleSmall!.copyWith(
                                color: const Color(0xFFB0B2BC),
                                fontWeight: FontWeight.w700,
                              )))
                    ],
                  ),
                ),
              ),
              CustomElevatedButton(
                  height: 48.v,
                  width: 328.h,
                  text: '인증하기',
                  margin: EdgeInsets.only(bottom: 16.v),
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF3F3F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                  ),
                  buttonTextStyle: textTheme.titleSmall!.copyWith(
                    color: const Color(0xFFB0B2BC),
                    fontWeight: FontWeight.w700,
                  ),
                  alignment: Alignment.bottomCenter),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                    color: lightTheme.onPrimary.withOpacity(0.4),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Spacer(),
                      Container(
                          decoration: const BoxDecoration(),
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: lightTheme.onPrimaryContainer,
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 21.v),
                                      decoration: BoxDecoration(
                                        color: lightTheme.onPrimaryContainer,
                                        border: Border(
                                          bottom: BorderSide(
                                            color: const Color(0x33A4A8AF),
                                            width: 1.h,
                                          ),
                                        ),
                                      ),
                                      child: Text('이용약관에 동의해주세요.',
                                          style: theme.textTheme.titleMedium)),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.h, top: 20.v),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                              svgPath: Assets
                                                  .svg.icoCheckCircle.path,
                                              height: 18.adaptSize,
                                              width: 18.adaptSize),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text('전체 동의',
                                                  style: textTheme.bodyMedium))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, top: 12.v, right: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: Assets.svg.icoCheck.path,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text('(필수) 서비스 이용 약관',
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        const Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.icoArrowLeft.path,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, top: 12.v, right: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    Assets.svg.icoCheck.path,
                                                height: 18.adaptSize,
                                                width: 18.adaptSize),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text('(필수) 차량 이용 약관',
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ],
                                        ),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.icoArrowLeft.path,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, top: 12.v, right: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    Assets.svg.icoCheck.path,
                                                height: 18.adaptSize,
                                                width: 18.adaptSize),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                    '(필수) 위치기반서비스 이용 약관',
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ],
                                        ),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.icoArrowLeft.path,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, top: 12.v, right: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      Assets.svg.icoCheck.path,
                                                  height: 18.adaptSize,
                                                  width: 18.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text(
                                                      '(필수) 차량 위치정보의 수집 이용 제공 동의',
                                                      style: theme.textTheme
                                                          .bodyMedium))
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.icoArrowLeft.path,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 40.h))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          26.h, 12.v, 16.h, 20.v),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: Assets
                                                          .svg.icoCheck.path,
                                                      height: 18.adaptSize,
                                                      width: 18.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text(
                                                          '(선택) 마케팅 목적 개인정보 수집/이용',
                                                          style: theme.textTheme
                                                              .bodyMedium))
                                                ],
                                              ),
                                            ),
                                            CustomImageView(
                                                svgPath: Assets
                                                    .svg.icoArrowLeft.path,
                                                height: 18.adaptSize,
                                                width: 18.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 66.h))
                                          ]))
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(16.h),
                                decoration: BoxDecoration(
                                  color: lightTheme.onPrimaryContainer,
                                ),
                                child: CustomElevatedButton(
                                    height: 48.v,
                                    text: '동의합니다',
                                    buttonStyle: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFF3F3F6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                      ),
                                    ),
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!.copyWith(
                                      color: const Color(0xFFB0B2BC),
                                      fontWeight: FontWeight.w700,
                                    )))
                          ]))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
