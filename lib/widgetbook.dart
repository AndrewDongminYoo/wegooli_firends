/// A complete example for Widgetbook manual approach
///
/// Use [WidgetbookFolder],[WidgetbookComponent], and [WidgetbookUseCase]
/// to create directories
/// [Ref link]: https://docs.widgetbook.io/getting-started/complete-example

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:widgetbook/widgetbook.dart' hide AlignmentAddon;

// 🌎 Project imports:
import 'components/container.dart';
import 'components/custom_card.dart';
import 'components/custom_text_field.dart';
import 'customs/custom_addon.dart' hide ZoomAddon;
import 'customs/custom_knob.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        DeviceFrameAddon(devices: Devices.ios.all),
        AlignmentAddon(),
        ZoomAddon(),
      ],
      directories: [
        WidgetbookFolder(
          name: 'Widgets',
          children: [
            WidgetbookComponent(
              name: 'CustomContainer',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default Style',
                  builder: greenContainerUseCase,
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomCard',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default Style',
                  builder: (context) => const CustomCard(
                    child: Text('This is a custom card'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Custom Background Color',
                  builder: (context) => const CustomCard(
                    backgroundColor: Color(0xFFC8E6C9),
                    child: Text(
                      'This is a custom card with a custom background color',
                    ),
                  ),
                ),
              ],
            ),
            // CustomTextField component use-cases
            WidgetbookComponent(
              name: 'CustomTextField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default Style',
                  builder: (context) => CustomTextField(
                    controller: TextEditingController(),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Hint Text',
                  builder: (context) => CustomTextField(
                    controller: TextEditingController(),
                    hintText: 'Enter your text here',
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookFolder(
          name: 'knobs',
          children: [
            WidgetbookComponent(
              name: 'RangeSlider',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: rangeSlider,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
