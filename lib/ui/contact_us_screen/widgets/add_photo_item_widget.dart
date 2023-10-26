// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/one_on_one_controller.dart';
import '../models/add_photo_item.dart';
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

  AddPhotoItem listaddphotoaltItem;

  OneOnOneController controller = OneOnOneController.to;

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
