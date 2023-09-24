// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/gen/colors.gen.dart';

/// [HighlightFocus]는 탭 탐색을 허용하는 하위 포커스를 제공하는 도우미 위젯입니다.
/// 위젯을 [HighlightFocus] 위젯의 자식 위젯으로 래핑합니다.
class HighlightFocus extends StatefulWidget {
  const HighlightFocus({
    super.key,
    required this.onPressed,
    required this.child,
    this.highlightColor,
    this.borderColor,
    this.hasFocus = true,
    this.debugLabel,
  });

  /// [onPressed]는 위젯에 초점이 맞춰져 있을 때 스페이스바, 엔터키 또는 숫자패드를 누르면 호출됩니다.
  final VoidCallback onPressed;

  /// [child]는 위젯입니다.
  final Widget child;

  /// [highlightColor]은 위젯에 초점이 맞춰졌을 때 테두리에 채워지는 색상입니다.
  /// 원하지 않는 경우 [Colors.transparent]를 사용합니다.
  /// 기본 위젯이 보이도록 하려면 불투명도를 1보다 작게 사용합니다.
  final Color? highlightColor;

  /// [borderColor]는 위젯에 초점이 맞춰졌을 때 테두리의 색상입니다.
  final Color? borderColor;

  /// 위젯에 초점을 맞추는 것이 허용되면 [hasFocus]는 참입니다.
  /// 자식에게 초점을 건너뛰게 하려면 거짓으로 설정합니다.
  final bool hasFocus;

  final String? debugLabel;

  @override
  State<HighlightFocus> createState() => _HighlightFocusState();
}

class _HighlightFocusState extends State<HighlightFocus> {
  late bool isFocused;

  @override
  void initState() {
    super.initState();
    isFocused = false;
  }

  @override
  Widget build(BuildContext context) {
    final highlightColor =
        widget.highlightColor ?? ColorConstant.wegooli.withOpacity(0.5);
    final borderColor = widget.borderColor ?? ColorConstant.fontBlack;
    final highlightedDecoration = BoxDecoration(
      color: highlightColor,
      border: Border.all(
        color: borderColor,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );

    return Focus(
      canRequestFocus: widget.hasFocus,
      debugLabel: widget.debugLabel,
      onFocusChange: (newValue) {
        setState(() {
          isFocused = newValue;
        });
      },
      onKey: (node, event) {
        if (event is RawKeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.space ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.numpadEnter)) {
          widget.onPressed();
          return KeyEventResult.handled;
        } else {
          return KeyEventResult.ignored;
        }
      },
      child: Container(
        foregroundDecoration: isFocused ? highlightedDecoration : null,
        child: widget.child,
      ),
    );
  }
}
