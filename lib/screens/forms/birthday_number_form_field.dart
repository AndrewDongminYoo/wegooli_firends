// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class BirthdayNumberFormField extends StatelessWidget {
  const BirthdayNumberFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.readonly,
  });

  final UserController controller;
  final FocusNode focusNode;
  final bool readonly;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        initialValue:
            controller.birthDay.text.isEmpty ? null : controller.birthDay.text,
        width: getHorizontalSize(158),
        controller: controller.birthDay,
        enabled: !readonly,
        margin: getMargin(top: 4),
        autofillHints: const [AutofillHints.birthday],
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.singleLineFormatter,
          LengthLimitingTextInputFormatter(6),
        ],
        focusNode: focusNode,
        textInputType: TextInputType.number,
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: 'YYMMDD',
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
