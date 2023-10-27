// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/gen/fonts.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/text_styles.dart';
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
          height: 45.h,
          leadingWidth: 64.w,
          leading: CustomImageView(
            imagePath: Assets.brand.imgFriendsKo.path,
            margin: EdgeInsets.only(
              left: 15.w,
              top: 13.h,
              bottom: 13.h,
            ),
          ),
          actions: [
            CustomImageView(
              svgPath: Assets.svg.icoMenu.path,
              margin: EdgeInsets.fromLTRB(9.w, 13.h, 9.w, 12.h),
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
                  horizontal: 16.w,
                  vertical: 8.h,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFE5FAFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.h,
                        bottom: 3.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '신규 이벤트',
                            style: textTheme.bodySmall!.tint(Colors.black),
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: 140.w,
                            child: Text(
                              '위굴리 프렌즈를 이용하면\n할인 혜택이!',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.titleSmall!.tint(Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 61.h,
                      width: 96.w,
                      margin: EdgeInsets.only(top: 3.h),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            svgPath: Assets.svg.imgTicket.path,
                            height: 59.h,
                            width: 89.w,
                            alignment: Alignment.topLeft,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadiusStyle.circleBorder7,
                              ),
                              child: Text(
                                '1/3',
                                style: textTheme.bodySmall!.copyWith(
                                  color: lightTheme.onPrimaryContainer,
                                  fontSize: TextSize.xxs,
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
                  left: 16.w,
                  top: 16.h,
                  right: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: lightTheme.onPrimaryContainer,
                        border: Border.all(
                          color: const Color(0x33A4A8AF),
                          width: 1.w,
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
                              left: 1.w,
                              top: 13.h,
                            ),
                            child: Text(
                              '리더 신청',
                              style: textTheme.titleMedium!.copyWith(
                                fontFamily: FontFamily.nanumSquareRound,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.w,
                              top: 4.h,
                            ),
                            child: Text(
                              '프렌즈 리더되기',
                              style: textTheme.bodySmall!.copyWith(
                                fontFamily: FontFamily.nanumSquareRound,
                                color: const Color(0xFFB0B2BC),
                                fontSize: TextSize.xxs,
                              ),
                            ),
                          ),
                          SizedBox(height: 34.h),
                          CustomImageView(
                            svgPath: Assets.svg.imgGooliFlag.path,
                            height: 77.h,
                            width: 84.w,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w),
                      padding: EdgeInsets.symmetric(vertical: 13.h),
                      decoration: BoxDecoration(
                        color: lightTheme.onPrimaryContainer,
                        border: Border.all(
                          color: const Color(0x33A4A8AF),
                          width: 1.w,
                        ),
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Text(
                              '같이 쓰기',
                              style: textTheme.titleMedium!.copyWith(
                                fontFamily: FontFamily.nanumSquareRound,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.w,
                              top: 4.h,
                            ),
                            child: Text(
                              '프렌즈 같이쓰기',
                              style: textTheme.bodySmall!.copyWith(
                                fontFamily: FontFamily.nanumSquareRound,
                                color: const Color(0xFFB0B2BC),
                                fontSize: TextSize.xxs,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.h),
                          CustomImageView(
                            imagePath: Assets.images.imgGooli2.path,
                            height: 70.h,
                            width: 112.w,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 5.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 15.h,
                ),
                decoration: BoxDecoration(
                  color: lightTheme.onPrimaryContainer,
                  border: Border.all(
                    color: const Color(0x33A4A8AF),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 27.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            child: Text(
                              '혼자 쓰기',
                              style: textTheme.titleMedium!.copyWith(
                                fontFamily: FontFamily.nanumSquareRound,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '장기렌트 문의',
                            style: textTheme.bodySmall!.copyWith(
                              fontFamily: FontFamily.nanumSquareRound,
                              color: const Color(0xFFB0B2BC),
                              fontSize: TextSize.xxs,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgGooliHome.path,
                      height: 58.h,
                      width: 119.w,
                      margin: EdgeInsets.only(
                        top: 3.h,
                        right: 1.w,
                        bottom: 2.h,
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
