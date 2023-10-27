// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';

class EmptyNoticeScreen extends StatelessWidget {
  const EmptyNoticeScreen({super.key});
  static const routeName = '/notices_0';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.w,
            leading: const GetBackIcon(),
            title: const AppbarTitle(text: '공지사항')),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.h),
            child: Padding(
              padding: EdgeInsets.only(
                left: 103.w,
                right: 103.w,
                bottom: 5.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: Assets.images.imgGooli4.path,
                    height: 177.h,
                    width: 120.w,
                  ),
                  SizedBox(height: 21.h),
                  Text('작성된 글이 없습니다.',
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: TextSize.lg.sp,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
