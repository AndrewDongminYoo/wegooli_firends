// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ControlButton extends StatelessWidget {
  const ControlButton({
    required this.svgPath,
    required this.text,
    this.onTap,
    super.key,
  });
  final String svgPath;
  final String text;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    var smartKeyButtonStyle = ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      side: MaterialStateProperty.all(BorderSide(
        color: const Color(0x18000000),
        width: getHorizontalSize(1),
      )),
      fixedSize: MaterialStateProperty.all(const Size(130, 130)),
      shape: MaterialStateProperty.all(const CircleBorder(
        side: BorderSide(
          color: ColorConstant.actionNeutralDisabled,
        ),
      )),
      shadowColor: MaterialStateProperty.all(const Color(0x18000000)),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.transparent;
        }
        return ColorConstant.fontColorWhite;
      }),
      textStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return const TextStyle(fontSize: 16);
        }
        return const TextStyle(fontSize: 16);
      }),
    );
    return Stack(alignment: Alignment.center, children: [
      Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            color: ColorConstant.actionPrimaryDefault,
            shape: BoxShape.circle,
          )),
      ElevatedButton(
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        style: smartKeyButtonStyle,
        child: Container(
          width: 120,
          height: 120,
          padding: getPadding(),
          margin: getMargin(),
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0x18000000)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: svgPath,
                height: getSize(46),
                width: getSize(46),
                color: Colors.transparent,
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
    ]);
  }
}
