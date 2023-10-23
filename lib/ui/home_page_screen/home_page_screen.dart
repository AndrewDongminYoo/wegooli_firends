// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});
  static const routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        appBar: CustomAppBar(
          height: 45.v,
          leadingWidth: 64.h,
          leading: CustomImageView(
            imagePath: Assets.brand.imgFriendsKo.path,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
          actions: [
            CustomImageView(
              svgPath: Assets.svg.icoMenu.path,
              margin: EdgeInsets.fromLTRB(9.h, 13.v, 9.h, 12.v),
            ),
          ],
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.v,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFE5FAFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '신규 이벤트',
                            style: textTheme.bodySmall!
                                .copyWith(color: Colors.black),
                          ),
                          SizedBox(height: 4.v),
                          SizedBox(
                            width: 140.h,
                            child: Text(
                              '위굴리 프렌즈를 이용하면\n할인 혜택이!',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.titleSmall!
                                  .copyWith(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 61.v,
                      width: 96.h,
                      margin: EdgeInsets.only(top: 3.v),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            svgPath: Assets.svg.imgTicket.path,
                            height: 59.v,
                            width: 89.h,
                            alignment: Alignment.topLeft,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.h),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadiusStyle.circleBorder7,
                              ),
                              child: Text(
                                '1/3',
                                style: textTheme.bodySmall!.copyWith(
                                  color: lightTheme.onPrimaryContainer,
                                  fontSize: 10.fSize,
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
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 16.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      decoration: BoxDecoration(
                        color: lightTheme.onPrimaryContainer,
                        border: Border.all(
                          color: const Color(0x33A4A8AF),
                          width: 1.h,
                        ),
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 13.v,
                            ),
                            child: Text(
                              '리더 신청',
                              style: textTheme.titleMedium!.copyWith(
                                fontFamily: 'NanumSquareRound',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 4.v,
                            ),
                            child: Text(
                              '프렌즈 리더되기',
                              style: textTheme.bodySmall!.copyWith(
                                fontFamily: 'NanumSquareRound',
                                color: const Color(0xFFB0B2BC),
                                fontSize: 10.fSize,
                              ),
                            ),
                          ),
                          SizedBox(height: 34.v),
                          CustomImageView(
                            svgPath: Assets.svg.imgGooliFlag.path,
                            height: 77.v,
                            width: 84.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.h),
                      padding: EdgeInsets.symmetric(vertical: 13.v),
                      decoration: BoxDecoration(
                        color: lightTheme.onPrimaryContainer,
                        border: Border.all(
                          color: const Color(0x33A4A8AF),
                          width: 1.h,
                        ),
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              '같이 쓰기',
                              style: textTheme.titleMedium!.copyWith(
                                fontFamily: 'NanumSquareRound',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 4.v,
                            ),
                            child: Text(
                              '프렌즈 같이쓰기',
                              style: textTheme.bodySmall!.copyWith(
                                fontFamily: 'NanumSquareRound',
                                color: const Color(0xFFB0B2BC),
                                fontSize: 10.fSize,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.v),
                          CustomImageView(
                            imagePath: Assets.images.imgGooli2.path,
                            height: 70.v,
                            width: 112.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 5.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 15.v,
                ),
                decoration: BoxDecoration(
                  color: lightTheme.onPrimaryContainer,
                  border: Border.all(
                    color: const Color(0x33A4A8AF),
                    width: 1.h,
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 27.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            child: Text(
                              '혼자 쓰기',
                              style: textTheme.titleMedium!.copyWith(
                                fontFamily: 'NanumSquareRound',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            '장기렌트 문의',
                            style: textTheme.bodySmall!.copyWith(
                              fontFamily: 'NanumSquareRound',
                              color: const Color(0xFFB0B2BC),
                              fontSize: 10.fSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgGooliHome.path,
                      height: 58.v,
                      width: 119.h,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        right: 1.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
