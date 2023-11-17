/// 위젯북의 커스텀 노브 예시
///
/// [참조 링크]: https://docs.widgetbook.io/knobs/custom-knob

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'CustomRangeSlider', type: RangeSlider)
Widget rangeSlider(BuildContext context) {
  return RangeSlider(
    values: context.knobs.range(label: 'Range'),
    max: 10,
    min: 1,
    onChanged: (_) {},
  );
}

class RangeKnob extends Knob<RangeValues> {
  RangeKnob({
    required super.label,
    required super.value,
  });

  @override
  List<Field> get fields => [
        DoubleInputField(
          name: 'min-$label',
          initialValue: initialValue.start,
          /// 'onChanged'는 더 이상 사용되지 않으므로 사용해서는 안 됩니다.
          // ignore: deprecated_member_use
          onChanged: (context, value) {
            if (value == null) {
              return;
            }

            final state = WidgetbookState.of(context);

            /// 'value'는 더 이상 사용되지 않으므로 사용해서는 안 됩니다.
            /// 노브는 상태 비저장형 위젯입니다.
            /// 노브는 [valueFromQueryGroup]에서 해당 값을 알고 있습니다.
            /// 기본값을 설정하려면 [initialValue]를 사용할 수 있습니다.
            // ignore: deprecated_member_use
            final endValue = (state.knobs[label]!.value as RangeValues).end;

            // ignore: deprecated_member_use
            state.knobs.updateValue<RangeValues>(
              label,
              RangeValues(value, endValue),
            );
          },
        ),
        DoubleInputField(
          name: 'max-$label',

          /// 'value'는 더 이상 사용되지 않으므로 사용해서는 안 됩니다.
          /// 노브는 상태 비저장형 위젯입니다.
          /// 노브는 [valueFromQueryGroup]에서 해당 값을 알고 있습니다.
          /// 기본값을 설정하려면 [initialValue]를 사용할 수 있습니다.
          // ignore: deprecated_member_use
          initialValue: value!.end,
          /// 'onChanged'는 더 이상 사용되지 않으므로 사용해서는 안 됩니다.
          // ignore: deprecated_member_use
          onChanged: (context, value) {
            if (value == null) {
              return;
            }

            final state = WidgetbookState.of(context);

            /// 'value'는 더 이상 사용되지 않으므로 사용해서는 안 됩니다.
            /// 노브는 상태 비저장형 위젯입니다.
            /// 노브는 [valueFromQueryGroup]에서 해당 값을 알고 있습니다.
            /// 기본값을 설정하려면 [initialValue]를 사용할 수 있습니다.
            // ignore: deprecated_member_use
            final startValue = (state.knobs[label]!.value as RangeValues).start;

            /// 'onChanged'는 더 이상 사용되지 않으므로 사용해서는 안 됩니다.
            // ignore: deprecated_member_use
            state.knobs.updateValue<RangeValues>(
              label,
              RangeValues(startValue, value),
            );
          },
        ),
      ];

  @override
  RangeValues valueFromQueryGroup(Map<String, String> group) {
    return RangeValues(
      valueOf('min-$label', group)!,
      valueOf('max-$label', group)!,
    );
  }
}

extension RangeKnobBuilder on KnobsBuilder {
  RangeValues range({
    required String label,
    RangeValues initialValue = const RangeValues(1, 10),
  }) =>
      onKnobAdded(
        RangeKnob(
          label: label,
          value: initialValue,
        ),
      )!;
}
