// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/routes/app_navigation.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';

class ExpiringSubscriptionsScreen extends StatelessWidget {
  const ExpiringSubscriptionsScreen({super.key});
  static const routeName = '/expiring_subscription';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '구독 정보'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.h),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 5.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: Text(
                      '차량 정보',
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: TextSize.lg,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 20.h,
                    ),
                    decoration: BoxDecoration(
                      color: lightTheme.onPrimaryContainer,
                      border: Border.all(
                        color: const Color(0xFFB9BCC3),
                        width: 1.w,
                      ),
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10.h),
                        CustomImageView(
                          imagePath: Assets.cars.ev6GtSKlm.path,
                          height: 96.h,
                          width: 167.w,
                        ),
                        SizedBox(height: 30.h),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.w,
                            top: 20.h,
                            right: 9.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '모닝',
                                style: textTheme.titleMedium!
                                    .copyWith(fontSize: TextSize.lg),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Text(
                                  '12가 3456',
                                  style: textTheme.bodySmall!.tint(
                                    Palette.fontBlack66,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.w,
                            top: 14.h,
                            right: 9.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '월 결제 금액',
                                style: textTheme.bodyLarge!.tint(
                                  Palette.fontBlack66,
                                ),
                              ),
                              Text('150,000 원', style: textTheme.bodyLarge),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.w,
                            top: 3.h,
                            right: 9.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '구독',
                                style: textTheme.bodyLarge!.tint(
                                  Palette.fontBlack66,
                                ),
                              ),
                              Text(
                                '2023.07.01~2023.08.01',
                                style: textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.w,
                            top: 3.h,
                            right: 9.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '해지 예정일',
                                style: textTheme.bodyLarge!.tint(
                                  Palette.fontBlack66,
                                ),
                              ),
                              Text('2023.08.20', style: textTheme.bodyLarge),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          onTap: context.safePop,
                          height: 48.h,
                          width: 160.w,
                          text: '해지 취소',
                          margin: EdgeInsets.only(
                            top: 21.h,
                            right: 9.w,
                          ),
                          buttonStyle: ElevatedButton.styleFrom(
                            backgroundColor: lightTheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.w),
                            ),
                          ).noEffect,
                          buttonTextStyle: textTheme.titleMedium,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
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
