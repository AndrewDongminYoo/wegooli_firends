// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog(
      {super.key,
      required this.title,
      required this.content,
      this.cancelText = '취소',
      this.confirmText = '확인',
      this.disableCloseBtn = false,
      this.confirmFunc});

  final Text title;
  final Text content;
  final String cancelText;
  final String confirmText;
  final bool disableCloseBtn;
  final void Function()? confirmFunc;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      surfaceTintColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!disableCloseBtn)
            Align(
                alignment: Alignment.topRight,
                child: CustomImageView(
                  svgPath: Assets.svg.imgCloseBtn.path,
                  width: getHorizontalSize(15),
                  height: getVerticalSize(15),
                  onTap: () => Navigator.pop(context),
                )),
          title,
        ],
      ),
      titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.pretendard),
      contentTextStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.pretendard),
      content: SingleChildScrollView(
          child: ListBody(children: <Widget>[
        content
      ])),
      actionsPadding: getPadding(all: 0),
      actions: <Widget>[
        SizedBox(
          width: getHorizontalSize(328),
          height: getVerticalSize(52),
          child: Row(
            children: [
              const CancelButton(plural: true),
              CustomElevatedButton(
                width: getHorizontalSize(145),
                height: getVerticalSize(52),
                text: confirmText,
                buttonStyle: CustomButtonStyles.fillPrimaryBR10,
                buttonTextStyle: CustomTextStyles.titleMedium16,
                onTap: () {
                  if (confirmFunc != null) {
                    confirmFunc!();
                  }
                  Navigator.pop(context, false);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
