// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/floating_button.dart';
import '/widgets/image_view.dart';
import 'controller/smart_key_details_controller.dart';
import 'models/smart_key_details_model.dart';

// ignore_for_file: must_be_immutable
class SmartKeyDetailsPage extends StatelessWidget {
  SmartKeyDetailsPage({Key? key}) : super(key: key);

  SmartKeyDetailsController controller =
      Get.put(SmartKeyDetailsController(SmartKeyDetailsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: CustomImageView(
              svgPath: Assets.svg.imgArrowleft.path,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '상세 정보')),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 136.v),
              child: Column(
                children: [
                  CustomImageView(
                      imagePath: Assets.images.imgRectangle4640.path,
                      height: 132.v,
                      width: 200.h),
                  SizedBox(height: 20.v),
                  Container(
                    height: 8.v,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F7F7),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 21.v),
                      child: Text(
                        '기본 정보',
                        style: textTheme.titleMedium!.copyWith(
                          fontSize: 18.fSize,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.h, top: 14.v, right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('모델',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            )),
                        Text('레이 3세대', style: textTheme.bodyLarge)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 3.v, right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('차종',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            )),
                        Text('소형', style: textTheme.bodyLarge)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 3.v, right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('연료',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            )),
                        Text('휘발유', style: textTheme.bodyLarge)
                      ],
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Container(
                    height: 8.v,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F7F7),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h, top: 21.v),
                      child: Text(
                        '정비 상태',
                        style: textTheme.titleMedium!.copyWith(
                          fontSize: 18.fSize,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.h, top: 14.v, right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('엔진오일 점검일',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            )),
                        Text('2023.08.01', style: textTheme.bodyLarge)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 4.v, right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('타이어 점검일',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            )),
                        Text('2023.08.01', style: textTheme.bodyLarge)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 3.v, right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('배터리 상태',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            )),
                        Text('양호', style: textTheme.bodyLarge)
                      ],
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 3.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('인원',
                                style: textTheme.bodyLarge!.copyWith(
                                  color: lightTheme.onPrimary.withOpacity(0.4),
                                )),
                            Text('4인승', style: textTheme.bodyLarge)
                          ]))
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 70,
          width: 70,
          backgroundColor: lightTheme.primary,
          child: CustomImageView(
              svgPath: Assets.svg.imgContactsupport.path,
              height: 35.0.v,
              width: 35.0.h),
        ),
      ),
    );
  }
}
