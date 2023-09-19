// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

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
      fixedSize: MaterialStateProperty.all(Size(120.h, 120.v)),
      shape: MaterialStateProperty.all(const CircleBorder(
        side: BorderSide(
          color: ColorConstant.neutralDisabled,
        ),
      )),
      shadowColor: MaterialStateProperty.all(const Color(0x18000000)),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return ColorConstant.primaryDefault;
        } else if (states.contains(MaterialState.disabled)) {
          return ColorConstant.neutralDisabled;
        } else if (states.contains(MaterialState.focused)) {
          return ColorConstant.primaryDefault;
        } else {
          return Colors.transparent;
        }
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
              width: 130.h,
              height: 130.v,
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
              width: 120.h,
              height: 120.v,
              decoration: ShapeDecoration(
                // color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(width: 0.50, color: appTheme.blueGray30033),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: svgPath,
                    height: 46.v,
                    width: 46.h,
                    // color: Colors.transparent,
                  ),
                  Padding(
                    padding: getPadding(top: 3),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium!
                          .copyWith(letterSpacing: 0.03.h),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
