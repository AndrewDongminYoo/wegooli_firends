// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/one_on_one_controller.dart';
import '../models/listaddphotoalt_item_model.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/icon_button.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class AddPhotoWidget extends StatelessWidget {
  AddPhotoWidget(
    this.listaddphotoaltItem, {
    super.key,
  });

  ListAddPhotoAltItemModel listaddphotoaltItem;

  OneOnOneController controller = Get.find<OneOnOneController>();

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
          child: CustomImageView(svgPath: Assets.svg.icoAddPhoto.path),
        ),
      ),
    );
  }
}
