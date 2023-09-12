// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

class WideScreenVisible extends StatelessWidget {
  const WideScreenVisible({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: constraints.maxWidth >= 1200,
      child: Expanded(
        child: Container(
          height: double.infinity,
          color: theme.colorScheme.primary,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Firebase 인증 데스크탑',
                  style: theme.textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
