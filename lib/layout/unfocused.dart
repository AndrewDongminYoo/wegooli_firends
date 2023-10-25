// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// `Unfocused` 클래스는 하위 위젯 외부를 탭할 때 현재 포커스를 해제하기 위해 하위 [Form] 위젯을 `GestureDetector`로 래핑하는 위젯
// ignore: must_be_immutable
class UnfocusedForm extends StatefulWidget {
  UnfocusedForm({
    super.key,
    this.child,
    this.children,
    required this.canSubmit,
    this.autoValidate = true,
  }) : assert(!(child == null && children == null),
            'child 또는 children 둘 중 하나는 반드시 필요합니다.');

  /// Column이나 Container 등 세부 속성을 추가해야 하는 경우 사용
  final Widget? child;

  /// Column 위젯 확장 지원을 위해 추가됨 (Column 세부 속성 미지원)
  final List<Widget>? children;

  final ValueNotifier<bool> canSubmit;
  final bool autoValidate;

  @override
  State<UnfocusedForm> createState() => _UnfocusedFormState();
}

class _UnfocusedFormState extends State<UnfocusedForm> with ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    /// 이 [Form]의 하위 항목인 모든 [FormField]를 저장합니다.
    formKey.currentState!.save();

    /// 이 객체가 트리에서 영구적으로 제거될 때 호출됩니다.
    formKey.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /// 불투명 대상([HitTestBehavior.opaque])은 적중 테스트에 적중되어 범위 내에서 이벤트를 수신할 수 있으며, 시각적으로 뒤에 있는 대상도 이벤트를 수신하지 못하게 할 수 있습니다.
      /// 반투명 대상([HitTestBehavior.translucent])은 해당 범위 내에서 이벤트를 수신하고 시각적으로 뒤에 있는 대상도 이벤트를 수신할 수 있습니다.
      behavior: HitTestBehavior.translucent,
      onTap: FocusScope.of(context).unfocus,
      child: Form(
        key: formKey,

        /// 폼이 포함된 [ModalRoute]를 해제하려는 시도를 거부할 수 있도록 합니다.
        /// 입력에서 [Future<false>] 를 반환하면 폼의 라우트가 팝업되지 않습니다.
        onWillPop: () async => false,
        autovalidateMode: widget.autoValidate
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        child: widget.children != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.children!,
              )
            : widget.child!,
        onChanged: () {
          final isValid = formKey.currentState!.validate();
          widget.canSubmit.value = isValid;
          widget.canSubmit.notifyListeners();
        },
      ),
    );
  }
}
