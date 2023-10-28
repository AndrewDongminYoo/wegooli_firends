// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/routes/app_navigation.dart';
import '/routes/app_router.dart';
import '/screens/subscribe_info_screen/unsubscribe_confirm_dialog.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';

class UnsubscribeScreen extends StatelessWidget {
  const UnsubscribeScreen({super.key});
  static const routeName = '/unsubscribe';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '구독 해지 예약'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.h),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 5.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: Assets.images.imgGooli5.path,
                    height: 157.h,
                    width: 120.w,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 179.w,
                    child: Text(
                      '(닉네임)님 정말로 구독을\n해지하시겠습니까?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: TextSize.lg,
                        height: Leading.snug,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.h),
                  Text(
                    '2023년 8월 4일 이후에 구독이 해지됩니다.',
                    style: textTheme.bodyLarge!.tint(Colors.black),
                  ),
                  SizedBox(height: 81.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        onTap: context.safePop,
                        width: 104.w,
                        text: '취소',
                        buttonStyle: ElevatedButton.styleFrom(
                          backgroundColor: Palette.gray400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.w),
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        onTap: () {
                          // 해지 재확인 다이얼로그
                          AppRouter.showDialog(
                            context: context,
                            dialog: const UnsubscribeConfirmDialog(),
                          );
                        },
                        width: 216.w,
                        text: '구독 해지하기',
                      ),
                    ],
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
