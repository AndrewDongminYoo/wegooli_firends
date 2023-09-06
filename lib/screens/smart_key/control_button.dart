// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ControlButton extends StatelessWidget {
  final String svgPath;
  final String text;
  final Function? onTap;
  const ControlButton({
    required this.svgPath,
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            color: const Color(0xFFFFE142),
            shape: BoxShape.circle,
          )),
      ElevatedButton(
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          side: MaterialStateProperty.all(BorderSide(
            color: const Color(0x18000000),
            width: getHorizontalSize(1.0),
          )),
          fixedSize: MaterialStateProperty.all(const Size(130, 130)),
          shape: MaterialStateProperty.all(const CircleBorder(
            side: BorderSide(
              // color: const Color(0x18000000),
              color: const Color(0x33A4A8AF),
              width: 1,
            ),
          )),
          shadowColor: MaterialStateProperty.all(const Color(0x18000000)),
          // [
          //   BoxShadow(
          //     color: const Color(0x18000000),
          //     blurRadius: 10,
          //     offset: Offset(2, 2),
          //   ),
          // ],
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            // If the button is pressed, return green, otherwise blue
            if (states.contains(MaterialState.pressed)) {
              return Colors.transparent;
            }
            return const Color(0xFFFFFFFF);
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return const TextStyle(fontSize: 16);
            }
            return const TextStyle(fontSize: 16);
          }),
        ),
        child: Container(
          width: 120,
          height: 120,
          padding: getPadding(),
          margin: getMargin(),
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0x18000000), width: 1),
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
      )
    ]);
  }
}
