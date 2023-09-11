// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// `Unfocused` 클래스는 하위 위젯 외부를 탭할 때 현재 포커스를 해제하기 위해 하위 위젯을 `GestureDetector`로 래핑하는 위젯
class Unfocused extends Builder {
  final Widget child;

  Unfocused({
    Key? key,
    required this.child,
  }) : super(
          key: key,
          builder: (BuildContext context) {
            return GestureDetector(
              key: key,
              behavior: HitTestBehavior.translucent,
              onTap: () => FocusScope.of(context).unfocus(),
              child: child,
            );
          },
        );
}
