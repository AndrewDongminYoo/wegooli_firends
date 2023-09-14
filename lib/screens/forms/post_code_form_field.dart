// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PostCodeFormField extends StatelessWidget {
  const PostCodeFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        enabled: false,
        autofillHints: const [AutofillHints.postalCode],
        textInputType: TextInputType.number,
        width: getHorizontalSize(160),
        controller: controller.postCode,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return l10ns.yourZipCodeIsRequired;
          } else if (value.isNumericOnly) {
            return value;
          }
          return null;
        },
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.zipCode,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        inputFormatters: [
          LengthLimitingTextInputFormatter(6),
          FilteringTextInputFormatter.digitsOnly,
        ],
        fillColor: Colors.white);
  }
}
