// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CustomInputLabel extends StatelessWidget {
  const CustomInputLabel({
    this.isRequired = true,
    required this.labelText,
    super.key,
  });
  final bool isRequired;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(
            labelText,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium!
                .copyWith(letterSpacing: getHorizontalSize(0.03)),
          )),
      Padding(
        padding: getPadding(left: 2, bottom: 5),
        child: (isRequired
            ? Text(
                '*',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleSmall!
                    .copyWith(letterSpacing: getHorizontalSize(0.06)),
              )
            : const Text('')),
      ),
    ]);
  }
}
