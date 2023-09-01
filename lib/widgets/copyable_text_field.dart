// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 모든 텍스트를 선택하고 선택한 텍스트를 클립보드에 복사하는 버튼이 있는 텍스트 필드입니다.
class CopyableTextField extends StatefulWidget {
  const CopyableTextField({super.key});
  @override
  State<CopyableTextField> createState() => _CopyableTextFieldState();
}

class _CopyableTextFieldState extends State<CopyableTextField> {
  late TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Actions(
      dispatcher: LoggingActionDispatcher(),
      actions: <Type, Action<Intent>>{
        ClearIntent: ClearAction(controller),
        CopyIntent: CopyAction(controller),
        SelectAllIntent: SelectAllAction(controller),
      },
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Row(
              children: <Widget>[
                const Spacer(),
                Expanded(
                  child: TextField(controller: controller),
                ),
                IconButton(
                  icon: const Icon(Icons.content_copy_rounded),
                  tooltip: 'Copy',
                  onPressed:
                      Actions.handler<CopyIntent>(context, const CopyIntent()),
                ),
                IconButton(
                  icon: const Icon(Icons.select_all_rounded),
                  tooltip: 'Select All',
                  onPressed: Actions.handler<SelectAllIntent>(
                      context, const SelectAllIntent()),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

/// 처리하는 모든 키를 기록하는 `ShortcutManager`.
class LoggingShortcutManager extends ShortcutManager {
  @override
  KeyEventResult handleKeypress(BuildContext context, RawKeyEvent event) {
    final KeyEventResult result = super.handleKeypress(context, event);
    if (result == KeyEventResult.handled) {
      print('Handled shortcut $event in $context');
    }
    return result;
  }
}

/// 호출하는 모든 작업을 기록하는 `ActionDispatcher`.
class LoggingActionDispatcher extends ActionDispatcher {
  @override
  Object? invokeAction(
    covariant Action<Intent> action,
    covariant Intent intent, [
    BuildContext? context,
  ]) {
    print('Action invoked: $action($intent) from $context');
    super.invokeAction(action, intent, context);
    return null;
  }
}

/// `TextEditingController`를 지우기 위해 `ClearAction`에 바인딩된 인텐트.
class ClearIntent extends Intent {
  const ClearIntent();
}

/// `ClearIntent`에 바인딩된 액션으로, 해당 `TextEditingController`를 지웁니다.
class ClearAction extends Action<ClearIntent> {
  ClearAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant ClearIntent intent) {
    controller.clear();

    return null;
  }
}

/// `CopyAction`에 바인딩된 인텐트로, 해당 `TextEditingController`에서 복사합니다.
class CopyIntent extends Intent {
  const CopyIntent();
}

/// `CopyIntent`에 바인딩된 액션으로, 해당 `TextEditingController`의 텍스트를 클립보드에 복사합니다.
class CopyAction extends Action<CopyIntent> {
  CopyAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant CopyIntent intent) {
    final String selectedString = controller.text.substring(
      controller.selection.baseOffset,
      controller.selection.extentOffset,
    );
    print('$selectedString is Copied!!');
    Clipboard.setData(ClipboardData(text: selectedString));

    return null;
  }
}

/// `SelectAllAction`에 바인딩되어 컨트롤러의 모든 텍스트를 선택하는 인텐트입니다.
class SelectAllIntent extends Intent {
  const SelectAllIntent();
}

/// 해당 `TextEditingController`의 모든 텍스트를 선택하는 `SelectAllAction`에 바인딩된 액션입니다.
class SelectAllAction extends Action<SelectAllIntent> {
  SelectAllAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant SelectAllIntent intent) {
    controller.selection = controller.selection.copyWith(
      baseOffset: 0,
      extentOffset: controller.text.length,
      affinity: controller.selection.affinity,
    );
    print('${controller.text} is Selected!!');
    return null;
  }
}

/// 최상위 애플리케이션 클래스입니다.
/// 여기에 정의된 단축키는 위젯마다 다르게 수행될 수는 있지만 기본적으로 전체 앱에 적용됩니다.
class CopyableTextFieldWithShortcuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <SingleActivator, Intent>{
        SingleActivator(LogicalKeyboardKey.escape): const ClearIntent(),
        SingleActivator(LogicalKeyboardKey.keyC, meta: true):
            const CopyIntent(),
        SingleActivator(LogicalKeyboardKey.keyA, meta: true):
            const SelectAllIntent(),
      },
      child: const CopyableTextField(),
    );
  }
}
