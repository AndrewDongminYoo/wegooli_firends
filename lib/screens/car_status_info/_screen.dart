// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CarStatusInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: CustomImageView(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: l10ns.carStatusInformation)),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 80, top: 13, bottom: 20, right: 80),
                          child: CustomImageView(
                            imagePath: Assets.images.imgCarSpark.path,
                            height: getVerticalSize(132),
                            width: getHorizontalSize(200),
                          )),
                      Container(
                        height: getVerticalSize(8),
                        width: mediaQueryData.size.width,
                        color: Color.fromRGBO(246, 247, 247, 1),
                      ),
                      Container(
                        padding: getPadding(
                            left: 16, top: 20, bottom: 20, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(bottom: 10),
                              child: Text(
                                '기본 정보',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 18,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 1.44,
                                  letterSpacing: 0.04,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '모델',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '레이 3세대',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '차종',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '소형',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '연료',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '휘발유',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '인원',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '4인승',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(8),
                        width: mediaQueryData.size.width,
                        color: Color.fromRGBO(246, 247, 247, 1),
                      ),
                      Container(
                        padding: getPadding(
                            left: 16, top: 20, bottom: 20, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(bottom: 10),
                              child: Text(
                                '정비 상태',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 18,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 1.44,
                                  letterSpacing: 0.04,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '엔진오일 점검일',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '2023.08.01',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '타이어 점검일',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '2023.08.01',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '배터리 상태',
                                  style: TextStyle(
                                    color: Color(0x66222222),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                                Text(
                                  '양호',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: FontFamily.pretendard,
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                    letterSpacing: 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
