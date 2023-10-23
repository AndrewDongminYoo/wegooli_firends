// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';

class SubscribeInfoScreen extends StatelessWidget {
  const SubscribeInfoScreen({super.key});
  static const routeName = '/subscribe_info';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: const GetBackIcon(),
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
                                imagePath: Assets.cars.niroEvSSwp.path,
                                height: 96.v,
                                width: 167.h),
                            SizedBox(height: 30.v),
                            const Divider(),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 9.h, top: 21.v, right: 9.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('모닝',
                                      style: textTheme.titleMedium!
                                          .copyWith(fontSize: 18.fSize)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.v, bottom: 2.v),
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
                                  left: 9.h, top: 13.v, right: 9.h),
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
                                  Text('결제 예정일',
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
                                text: '해지하기',
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
