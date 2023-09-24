// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class PostCodeFormField extends StatelessWidget {
  const PostCodeFormField({
    super.key,
    required this.handler,
    required this.controller,
  });

  final UserController controller;
  final TextEditingController handler;

  @override
  Widget build(BuildContext context) {
    handler.addListener(() {
      if (handler.text.isNotEmpty) {
        controller.postCode = handler.text;
      }
    });
    return CustomTextFormField(
      controller: handler,
      enabled: false,
      autofillHints: const [AutofillHints.postalCode],
      textInputType: TextInputType.number,
      width: 160.h,
      margin: getMargin(top: 4),
      contentPadding: getPadding(horizontal: 12, vertical: 14),
      validator: (String? value) {
        if (value.isNullOrEmpty) {
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
