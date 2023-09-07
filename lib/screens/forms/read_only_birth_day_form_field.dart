// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ReadOnlyBirthDayFormField extends StatelessWidget {
  const ReadOnlyBirthDayFormField({
    super.key,
    required this.userController,
  });

  final UserController userController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        enabled: userController.birthDay.text.isNotEmpty ? false : true,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: "YYMMDD",
        inputFormatters: [
          LengthLimitingTextInputFormatter(6),
        ],
        controller: userController.birthDay,
        initialValue: userController.birthDay.text,
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
