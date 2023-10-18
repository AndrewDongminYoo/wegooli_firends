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
import 'controller/expiring_subscriptions_controller.dart';

class ExpiringSubscriptionsScreen
    extends GetWidget<ExpiringSubscriptionsController> {
  const ExpiringSubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: CustomImageView(
              svgPath: Assets.svg.icoArrowLeft.path,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '구독 정보')),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      '차량 정보',
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 18.fSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 20.v),
                      decoration: BoxDecoration(
                          color: lightTheme.onPrimaryContainer,
                          border: Border.all(
                            color: const Color(0xFFB9BCC3),
                            width: 1.h,
                          ),
                          borderRadius: BorderRadiusStyle.circleBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 10.v),
                            CustomImageView(
                                imagePath: Assets.images.img21.path,
                                height: 96.v,
                                width: 167.h),
                            SizedBox(height: 30.v),
                            const Divider(),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 9.h, top: 20.v, right: 9.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('모닝',
                                      style: textTheme.titleMedium!.copyWith(
                                        fontSize: 18.fSize,
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text('12가 3456',
                                          style: textTheme.bodySmall!.copyWith(
                                            color: lightTheme.onPrimary
                                                .withOpacity(0.4),
                                          )))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 9.h, top: 14.v, right: 9.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('월 결제 금액',
                                      style: textTheme.bodyLarge!.copyWith(
                                        color: lightTheme.onPrimary
                                            .withOpacity(0.4),
                                      )),
                                  Text('150,000 원', style: textTheme.bodyLarge)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 9.h, top: 3.v, right: 9.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('구독',
                                      style: textTheme.bodyLarge!.copyWith(
                                        color: lightTheme.onPrimary
                                            .withOpacity(0.4),
                                      )),
                                  Text('2023.07.01~2023.08.01',
                                      style: textTheme.bodyLarge)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 9.h, top: 3.v, right: 9.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('해지 예정일',
                                      style: textTheme.bodyLarge!.copyWith(
                                        color: lightTheme.onPrimary
                                            .withOpacity(0.4),
                                      )),
                                  Text('2023.08.20', style: textTheme.bodyLarge)
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                                height: 48.v,
                                width: 160.h,
                                text: '해지 취소',
                                margin: EdgeInsets.only(top: 21.v, right: 9.h),
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: lightTheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.h),
                                  ),
                                ),
                                buttonTextStyle: textTheme.titleMedium,
                                alignment: Alignment.centerRight)
                          ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
