// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class BirthdayNumberFormField extends StatelessWidget {
  BirthdayNumberFormField({
    super.key,
    required this.readonly,
    required this.focusNode,
    required this.nextFocus,
  });
  final bool readonly;
  final FocusNode focusNode;
  final FocusNode nextFocus;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    const maxLength = 6;
    return CustomTextFormField(
      focusNode: focusNode,
      initialValue: controller.frontNumbers,
      onChanged: (String value) {
        if (value.length >= maxLength) {
          controller.frontNumbers = value.substring(0, maxLength);
          nextFocus.requestFocus();
        }
      },
      width: 158.h,
      readOnly: readonly,
      margin: getMargin(top: 4),
      autofillHints: const [AutofillHints.birthday],
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      maxLength: maxLength,
      textInputType: TextInputType.number,
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: 'YYMMDD',
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
    );
  }
}
