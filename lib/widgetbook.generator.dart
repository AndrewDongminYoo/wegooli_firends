/// A complete example for Widgetbook generator approach
///
/// You can use @App and @UseCase annotation to generate directories
/// [Ref link]: https://docs.widgetbook.io/getting-started/complete-example

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:widgetbook/widgetbook.dart' hide AlignmentAddon;
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// 🌎 Project imports:
import 'customs/custom_addon.dart' hide ZoomAddon;
import 'widgetbook.generator.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      directories: directories,
      addons: [
        DeviceFrameAddon(devices: Devices.ios.all),
        AlignmentAddon(),
        ZoomAddon(),
      ],
    );
  }
}
