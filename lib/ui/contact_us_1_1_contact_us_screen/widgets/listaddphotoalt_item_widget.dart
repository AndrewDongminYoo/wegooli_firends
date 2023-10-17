// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/contact_us_1_1_contact_us_controller.dart';
import '../models/listaddphotoalt_item_model.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/icon_button.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class ListaddphotoaltItemWidget extends StatelessWidget {
  ListaddphotoaltItemWidget(
    this.listaddphotoaltItem, {
    Key? key,
  }) : super(key: key);

  ListaddphotoaltItemModel listaddphotoaltItem;

  ContactUs11ContactUsController controller =
      Get.find<ContactUs11ContactUsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 66.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomIconButton(
          height: 66.adaptSize,
          width: 66.adaptSize,
          margin: EdgeInsets.only(top: 5.v),
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillBlueGrayTL5,
          child: CustomImageView(
            svgPath: Assets.svg.imgAddphotoalternate.path,
          ),
        ),
      ),
    );
  }
}
