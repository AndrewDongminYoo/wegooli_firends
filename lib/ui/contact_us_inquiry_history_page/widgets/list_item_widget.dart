// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/contact_us_inquiry_history_controller.dart';
import '../models/list_item_model.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';
import '/widgets/outlined_button.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItem, {
    super.key,
  });

  ListItemModel listItem;

  ContactUsInquiryHistoryController controller =
      Get.find<ContactUsInquiryHistoryController>();

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
                      color: lightTheme.onPrimary.withOpacity(0.4),
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
              CustomImageView(
                svgPath: Assets.svg.icoArrowLeft.path,
                height: 18.adaptSize,
                width: 18.adaptSize,
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
