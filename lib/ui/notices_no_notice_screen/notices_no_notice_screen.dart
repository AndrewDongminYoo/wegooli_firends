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
import '/widgets/image_view.dart';

class EmptyNoticeScreen extends StatelessWidget {
  const EmptyNoticeScreen({super.key});
  static const routeName = '/notices_0';

  @override
  Widget build(BuildContext context) {
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
            title: AppbarTitle(text: '공지사항')),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.v),
            child: Padding(
              padding: EdgeInsets.only(left: 103.h, right: 103.h, bottom: 5.v),
              child: Column(
                children: [
                  CustomImageView(
                      imagePath: Assets.images.img.path,
                      height: 177.v,
                      width: 120.h),
                  SizedBox(height: 21.v),
                  Text('작성된 글이 없습니다.',
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 18.fSize,
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
