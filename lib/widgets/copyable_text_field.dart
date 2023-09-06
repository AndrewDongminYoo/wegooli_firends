// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// 모든 텍스트를 선택하고 선택한 텍스트를 클립보드에 복사하는 버튼이 있는 텍스트 필드입니다.
class CopyableTextField extends StatefulWidget {
  const CopyableTextField({super.key});
  @override
  State<CopyableTextField> createState() => _CopyableTextFieldState();
}

class _CopyableTextFieldState extends State<CopyableTextField> {
  late TextEditingController controller = TextEditingController();
  final focusNode = FocusNode();

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
        CopyAllIntent: CopyAllAction(controller),
        CopyIntent: CopyAction(controller),
        PasteIntent: PasteAction(controller),
        SelectAllIntent: SelectAllAction(controller),
      },
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Row(
              children: <Widget>[
                const SizedBox.shrink(),
                Expanded(
                    child: CustomTextFormField(
                  controller: controller,
                  focusNode: focusNode,
                  filled: true,
                  enabled: true,
                  hintText: "xxxx-xxxx-xxxx-xxxx",
                  contentPadding: getPadding(all: 14),
                  inputFormatters: <TextInputFormatter>[
                    SeperateTextFormatter(
                        sample: 'XXXX-XXXX-XXXX-XXXX', separator: '-'),
                    LengthLimitingTextInputFormatter(19),
                    FilteringTextInputFormatter.allow(r'[0-9a-zA-Z\-]'),
                  ],
                  textStyle: CustomTextStyles.bodyLargeGray50003,
                  hintStyle: CustomTextStyles.bodyLargeGray50003,
                  fillColor: theme.colorScheme.onPrimaryContainer,
                )),
                ElevatedButton.icon(
                  icon: const Icon(Icons.clear_all_rounded,
                      semanticLabel: 'Clear'),
                  label: const Text('Clear'),
                  onPressed: Actions.handler<ClearIntent>(
                      context, const ClearIntent()),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSecondary,
                    backgroundColor: theme.colorScheme.primary,
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.copy_rounded, semanticLabel: 'Copy'),
                  label: const Text('Copy'),
                  onPressed:
                      Actions.handler<CopyIntent>(context, const CopyIntent()),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSecondary,
                    backgroundColor: theme.colorScheme.primary,
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.paste_rounded, semanticLabel: 'Paste'),
                  label: const Text('Paste'),
                  onPressed: Actions.handler<PasteIntent>(
                      context, const PasteIntent()),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSecondary,
                    backgroundColor: theme.colorScheme.primary,
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.select_all_rounded,
                      semanticLabel: 'Select All'),
                  label: const Text('Select'),
                  onPressed: Actions.handler<SelectAllIntent>(
                      context, const SelectAllIntent()),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSecondary,
                    backgroundColor: theme.colorScheme.primary,
                  ),
                ),
                ElevatedButton.icon(
                    icon: const Icon(Icons.copy_all_rounded,
                        semanticLabel: 'Copy All'),
                    label: const Text('Copy All'),
                    onPressed: Actions.handler<CopyAllIntent>(
                        context, const CopyAllIntent()),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: theme.colorScheme.onSecondary,
                      backgroundColor: theme.colorScheme.primary,
                    )),
                const SizedBox.shrink(),
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

/// 호출하는 모든 액션을 기록하는 `ActionDispatcher`.
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

/// `CopyAllAction`에 바인딩되어 컨트롤러의 모든 텍스트를 선택 및 복사하는 인텐트입니다.
class CopyAllIntent extends Intent {
  const CopyAllIntent();
}

/// 해당 `TextEditingController`의 모든 텍스트를 선택 및 복사하는 `CopyAllAction`에 바인딩된 액션입니다.
class CopyAllAction extends Action<CopyAllIntent> {
  CopyAllAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant CopyAllIntent intent) {
    controller.selection = controller.selection.copyWith(
      baseOffset: 0,
      extentOffset: controller.text.length,
      affinity: controller.selection.affinity,
    );
    final String selectedString = controller.text.substring(
      controller.selection.baseOffset,
      controller.selection.extentOffset,
    );
    print('$selectedString is All Copied!!');
    Clipboard.setData(ClipboardData(text: controller.text));
    return null;
  }
}

/// `PasteAction`에 바인딩되어 컨트롤러의 모든 텍스트를 선택 및 복사하는 인텐트입니다.
class PasteIntent extends Intent {
  const PasteIntent();
}

/// 해당 `TextEditingController`의 클립보드의 텍스트를 붙여넣는 `PasteAction`에 바인딩된 액션입니다.
class PasteAction extends Action<PasteIntent> {
  PasteAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant PasteIntent intent) async {
    ClipboardData? copied = await Clipboard.getData(Clipboard.kTextPlain);
    controller.text += copied?.text ?? '';
    print('$copied is Pasted!!');
    return null;
  }
}

/// 최상위 애플리케이션 클래스입니다.
/// 여기에 정의된 단축키는 위젯마다 다르게 수행될 수는 있지만 기본적으로 전체 앱에 적용됩니다.
class CopyableTextFieldWithShortcuts extends StatelessWidget {
  const CopyableTextFieldWithShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <ShortcutActivator, Intent>{
        const SingleActivator(LogicalKeyboardKey.escape): const ClearIntent(),
        const SingleActivator(LogicalKeyboardKey.keyC, meta: true):
            const CopyIntent(),
        const SingleActivator(LogicalKeyboardKey.keyV, meta: true):
            const PasteIntent(),
        const SingleActivator(LogicalKeyboardKey.keyA, meta: true):
            const SelectAllIntent(),
        LogicalKeySet(LogicalKeyboardKey.keyC, LogicalKeyboardKey.shift,
            LogicalKeyboardKey.meta): const CopyAllIntent(),
      },
      child: const CopyableTextField(),
    );
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  static const String title = 'Shortcuts and Actions Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: title,
      home: CopyableTextFieldWithShortcuts(),
    );
  }
}

// void main(List<String> args) => runApp(DemoApp());
