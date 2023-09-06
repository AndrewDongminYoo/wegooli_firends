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
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!disableCloseBtn)
            Align(
                alignment: Alignment.topRight,
                child: CustomImageView(
                  svgPath: Assets.svg.imgCloseBtn.path,
                  width: getSize(18),
                  height: getSize(18),
                  margin: getMargin(right: 16),
                  onTap: () => Navigator.pop(context),
                )),
          title
        ],
      ),
      titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.pretendard),
      insetPadding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
      contentTextStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.pretendard),
      content:
          SingleChildScrollView(child: ListBody(children: <Widget>[content])),
      actionsPadding: getPadding(all: 0),
      actionsOverflowButtonSpacing: null,
      actions: <Widget>[
        SizedBox(
          width: getSize(328),
          height: getSize(52),
          child: Row(
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                style: ButtonStyle(
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF000000)),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      const Color(0xFFBABCC3)),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      getSize(164),
                      getSize(52),
                    ),
                  ),
                ), // passing false
                child: Text(
                  cancelText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: FontFamily.pretendard),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (confirmFunc != null) {
                    confirmFunc!();
                  }
                  Navigator.pop(context, false);
                },
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF000000)),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      const Color(0xFFFFE142)),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      getSize(164),
                      getSize(52),
                    ),
                  ),
                ), // passing true
                child: Text(
                  confirmText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: FontFamily.pretendard),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
