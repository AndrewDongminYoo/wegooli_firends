// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/list_item_model.dart';
import '/core/utils/size_utils.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
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
                  SizedBox(height: 3.v),
                  Text(
                    '2023.08.23',
                    style: textTheme.bodySmall!.copyWith(
                      color: Palette.fontBlack66,
                    ),
                  ),
                ],
              ),
              CustomOutlinedButton(
                width: 52.h,
                text: '처리중',
                margin: EdgeInsets.only(
                  left: 42.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
              ),
              customIcon(
                Assets.svg.icoArrowRight.path,
                size: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 9.v,
                  bottom: 7.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          const Divider(),
        ],
      ),
    );
  }
}
