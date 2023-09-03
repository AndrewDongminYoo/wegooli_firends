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
  final Function()? confirmFunc;
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
      titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.pretendard),
      insetPadding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
      contentTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.pretendard),
      content:
          SingleChildScrollView(child: ListBody(children: <Widget>[content])),
      actionsPadding: getPadding(all: 0),
      actionsOverflowButtonSpacing: null,
      actions: <Widget>[
        Container(
          width: getSize(328),
          height: getSize(52),
          child: Row(
            children: [
              TextButton(
                  onPressed: () =>
                      Navigator.pop(context, false), // passing false
                  child: Text(cancelText,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: FontFamily.pretendard)),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF000000)),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xFFBABCC3)),
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(getSize(164), getSize(52))))),
              TextButton(
                  onPressed: () {
                    if (confirmFunc != null) {
                      confirmFunc!();
                    }
                    Navigator.pop(context, false);
                  }, // passing true
                  child: Text(confirmText,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: FontFamily.pretendard)),
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF000000)),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xFFFFE142)),
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(getSize(164), getSize(52))))),
            ],
          ),
        ),
      ],
    );
  }
}
