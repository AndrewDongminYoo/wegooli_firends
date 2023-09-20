// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class AgreementItem extends StatefulWidget {
  AgreementItem({
    Key? key,
    required this.index,
    required this.terms,
    required this.onChange,
  }) : super(key: key);

  final int index;
  final List<Term> terms;
  final dynamic Function(bool) onChange;

  @override
  State<AgreementItem> createState() => _AgreementItemState();
}

class _AgreementItemState extends State<AgreementItem> {
  @override
  Widget build(BuildContext context) {
    final term = widget.terms[widget.index];
    return Padding(
        padding: getPadding(top: 14),
        child: Unfocused(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckboxButton(
                text: term.title,
                value: term.agree,
                onChange: widget.onChange,
              ),
              CustomImageView(
                svgPath: Assets.svg.imgArrowRight.path,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: getMargin(bottom: 2),
                onTap: () => Get.toNamed(
                  AppRoutes.acceptTermsDetail,
                  arguments: {'page': '${widget.index}'},
                ),
              ),
            ],
          ),
        ));
  }
}
