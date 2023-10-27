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
      width: 66.w,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomIconButton(
          height: 66.w,
          width: 66.w,
          margin: EdgeInsets.only(top: 5.h),
          padding: EdgeInsets.all(16.w),
          decoration: IconButtonStyleHelper.fillBlueGrayTL5,
          child: CustomImageView(svgPath: Assets.svg.icoAddPhoto.path),
        ),
      ),
    );
  }
}
