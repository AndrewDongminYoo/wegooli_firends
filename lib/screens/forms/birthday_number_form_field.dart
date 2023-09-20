// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class BirthdayNumberFormField extends StatelessWidget {
  const BirthdayNumberFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.readonly,
    this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool readonly;
  final Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        width: 158.h,
        controller: controller,
        enabled: !readonly,
        margin: getMargin(top: 4),
        autofillHints: const [AutofillHints.birthday],
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 6,
        focusNode: focusNode,
        textInputType: TextInputType.number,
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: 'YYMMDD',
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white,
        onChanged: onChanged);
  }
}
