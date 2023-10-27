// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/add_photo_item.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/buttons/icon_button.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class AddPhotoWidget extends StatelessWidget {
  const AddPhotoWidget(
    this.addPhotoItem, {
    super.key,
  });

  final AddPhotoItem addPhotoItem;

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
