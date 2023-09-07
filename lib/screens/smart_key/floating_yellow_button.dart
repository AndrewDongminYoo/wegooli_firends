// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class FloatingYellowButton extends StatelessWidget {
  const FloatingYellowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: CustomIconButton(
        height: getVerticalSize(70),
        width: getHorizontalSize(70),
        margin: getMargin(right: 22, top: 30),
        decoration: const BoxDecoration(
          color: const Color(0xFFFFE142),
          shape: BoxShape.circle,
        ),
        onTap: () => launchUrlString('tel:15666560'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: Assets.svg.imgEdit.path,
              color: const Color(0xFF000000),
              width: 22.5,
              height: 22.5,
              margin: getMargin(bottom: 3),
            ),
            Text(
              l10ns.reportAnIncident,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: const Color(0xFF000000),
                fontSize: 12,
                fontFamily: FontFamily.pretendard,
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0.02,
              ),
            )
          ],
        ),
      ),
    );
  }
}