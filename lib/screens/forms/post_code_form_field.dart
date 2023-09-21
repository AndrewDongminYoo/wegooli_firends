// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class PostCodeFormField extends StatelessWidget {
  const PostCodeFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
      initialValue: controller.postCode,
      onChanged: (String value) {
        if (value.isNotEmpty) {
          controller.postCode = value;
        }
      },
      enabled: false,
      autofillHints: const [AutofillHints.postalCode],
      textInputType: TextInputType.number,
      width: 160.h,
      margin: getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return l10ns.yourZipCodeIsRequired;
        } else if (isNumeric(value)) {
          return value;
        }
        return null;
      },
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: l10ns.zipCode,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      maxLength: 6,
      fillColor: Colors.white,
    );
  }
}
