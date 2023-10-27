// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/list_item_model.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
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
      decoration: BoxDecoration(
        color: lightTheme.onPrimaryContainer,
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: lightTheme.onPrimaryContainer,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: const Offset(2, 2),
            ),
          ],
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75.v,
              width: 9.h,
              decoration: BoxDecoration(
                color: lightTheme.primary,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10.h),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        listItem.value!.value,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      '8/16 (수) 15:20 ~ 8/17(목) 14:00',
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            customIcon(
              Assets.svg.icoMenuVertical.path,
              size: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 27.h,
                top: 6.v,
                bottom: 51.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
