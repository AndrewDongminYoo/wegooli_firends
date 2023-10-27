/// A custom theme example for Widgetbook manual approach
///
/// [Ref link]: https://docs.widgetbook.io/cookbook/custom-theme

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:widgetbook/widgetbook.dart';

// 🌎 Project imports:
import 'customs/custom_theme.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      addons: [
        ThemeAddon<AppThemeData>(
          themes: [
            const WidgetbookTheme(
              name: 'Blue',
              data: AppThemeData(
                color: Colors.blue,
              ),
            ),
            const WidgetbookTheme(
              name: 'Yellow',
              data: AppThemeData(
                color: Colors.yellow,
              ),
            ),
          ],
          themeBuilder: (context, theme, child) {
            // Wrap use cases with the custom theme's InheritedWidget
            return AppTheme(
              data: theme,
              child: child,
            );
          },
        ),
      ],
      directories: [
        WidgetbookComponent(
          name: 'Awesome Widget',
          useCases: [
            WidgetbookUseCase(
              name: 'Default',
              builder: (context) => const AwesomeWidget(),
            ),
          ],
        ),
      ],
    );
  }
}
