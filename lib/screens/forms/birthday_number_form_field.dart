// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class BirthdayNumberFormField extends StatelessWidget {
  const BirthdayNumberFormField({
    super.key,
    required this.focusNode,
    required this.readonly,
  });

  final FocusNode focusNode;
  final bool readonly;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
      initialValue: controller.frontNumbers,
      onChanged: (String value) {
        if (value.length == 6) {
          controller.frontNumbers = value;
        }
      },
      width: 158.h,
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
    );
  }
}
