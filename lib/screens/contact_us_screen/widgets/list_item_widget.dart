// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '../models/list_item_model.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/outlined_button.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
    this.listItem, {
    super.key,
  });

  final ListItemModel listItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '[문의] 우리 애기는 아래발치에서 코올코올. 고양이는 부뜨막에서 가릉가릉,',
                    style: textTheme.titleSmall,
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    '2023.08.23',
                    style: textTheme.bodySmall!.copyWith(
                      color: Palette.fontBlack66,
                    ),
                  ),
                ],
              ),
              CustomOutlinedButton(
                width: 52.w,
                text: '처리중',
                margin: EdgeInsets.only(
                  left: 42.w,
                  top: 4.h,
                  bottom: 2.h,
                ),
              ),
              customIcon(
                Assets.svg.icoArrowRight.path,
                size: 18.w,
                margin: EdgeInsets.only(
                  left: 10.w,
                  top: 9.h,
                  bottom: 7.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.h),
          const Divider(),
        ],
      ),
    );
  }
}
