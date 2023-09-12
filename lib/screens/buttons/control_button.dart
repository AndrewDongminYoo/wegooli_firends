// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ControlButton extends StatelessWidget {
  const ControlButton({
    required this.svgPath,
    required this.text,
    this.onTap,
    this.margin,
    super.key,
  });
  final String svgPath;
  final String text;
  final Function? onTap;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    final smartKeyButtonStyle = ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      fixedSize: MaterialStateProperty.all(
          Size(getHorizontalSize(120), getVerticalSize(120))),
      shape: MaterialStateProperty.all(const CircleBorder(
        side: BorderSide(
          color: ColorConstant.actionNeutralDisabled,
        ),
      )),
      shadowColor: MaterialStateProperty.all(const Color(0x18000000)),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return ColorConstant.actionPrimaryDefault;
        } else if (states.contains(MaterialState.disabled)) {
          return ColorConstant.actionNeutralDisabled;
        } else if (states.contains(MaterialState.focused)) {
          return ColorConstant.actionPrimaryDefault;
        } else {
          return Colors.transparent;
        }
        // return ColorConstant.fontColorWhite;
        // return Colors.white;
      }),
      textStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return const TextStyle(fontSize: 16);
        }
        return const TextStyle(fontSize: 16);
      }),
    );
    return Container(
        margin: margin,
        child: Stack(alignment: Alignment.center, children: [
          Container(
              width: getHorizontalSize(130),
              height: getVerticalSize(130),
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    )
                  ])),
          ElevatedButton(
            // statesController: controller,
            onPressed: () {
              if (onTap != null) {
                onTap?.call();
              }
            },
            style: smartKeyButtonStyle,
            child: Container(
              width: getHorizontalSize(120),
              height: getVerticalSize(120),
              decoration: const ShapeDecoration(
                // color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(width: 0.50, color: Color(0x33A4A8AF)),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: svgPath,
                    height: getVerticalSize(46),
                    width: getHorizontalSize(46),
                    // color: Colors.transparent,
                  ),
                  Padding(
                    padding: getPadding(top: 3),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium!
                          .copyWith(letterSpacing: getHorizontalSize(0.03)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
