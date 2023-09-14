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

  final String title;
  final Text content;
  final String cancelText;
  final String confirmText;
  final bool disableCloseBtn;
  final void Function()? confirmFunc;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // surfaceTintColor: Colors.white,
      content: Container(
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(left: 20, top: 15, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 6),
                            child: Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18.copyWith(
                                letterSpacing: 0.04,
                              ),
                            )),
                        if (!disableCloseBtn)
                          CustomImageView(
                              svgPath: Assets.svg.imgCloseGray400Sharp.path,
                              height: getSize(13),
                              width: getSize(13),
                              margin: getMargin(bottom: 15),
                              onTap: goBack),
                      ])),
              Container(
                alignment: Alignment.centerLeft,
                margin: getMargin(left:20, top:15, right:20, bottom: 30),
                child: content,
              ),
              Row(
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
                        confirmFunc?.call();
                      }
                      Navigator.pop(context, false);
                    },
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
