// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class PrimaryAddressFormField extends StatelessWidget {
  const PrimaryAddressFormField({
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
        controller.primaryAddress = handler.text;
      }
    });
    return CustomTextFormField(
      controller: handler,
      enabled: false,
      textInputType: TextInputType.streetAddress,
      autofillHints: const [AutofillHints.addressCityAndState],
      hintText: l10ns.primaryAddress,
      margin: getMargin(top: 10),
      contentPadding: getPadding(horizontal: 12, vertical: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
    );
  }
}
