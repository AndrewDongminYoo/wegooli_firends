// 🐦 Flutter imports:
import 'package:flutter/material.dart';

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
          color: Theme.of(context).colorScheme.primary,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Firebase 인증 데스크탑',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
