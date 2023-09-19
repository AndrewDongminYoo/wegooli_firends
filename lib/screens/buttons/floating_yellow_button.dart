// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import '/lib.dart';

class FloatingYellowButton extends StatelessWidget {
  const FloatingYellowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: CustomIconButton(
        height: 70.v,
        width: 70.h,
        margin: getMargin(right: 22),
        decoration: BoxDecoration(
          color: ColorConstant.primaryDefault,
          shape: BoxShape.circle,
          boxShadow: AppDecoration.shadows,
        ),
        onTap: () => launchUrlString('tel:15666560'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: Assets.svg.imgEdit.path,
              color: Colors.black,
              width: 30,
              height: 30,
              margin: getMargin(bottom: 3),
            ),
            Text(
              l10ns.reportAnIncident, // '사고 접수'
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: FontFamily.pretendard,
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
