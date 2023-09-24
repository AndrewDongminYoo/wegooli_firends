// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class AgreementItem extends StatelessWidget {
  const AgreementItem({
    Key? key,
    required this.term,
    required this.onChanged,
  }) : super(key: key);

  final Term term;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 14),
      child: Unfocused(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCheckboxButton(
              text: term.title,
              value: term.agree,
              onChange: onChanged,
            ),
            CustomImageView(
              svgPath: Assets.svg.imgArrowRight.path,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: getMargin(bottom: 2),
              onTap: () => Get.toNamed(
                AppRoutes.acceptTermsDetail,
                arguments: {'page': term},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
