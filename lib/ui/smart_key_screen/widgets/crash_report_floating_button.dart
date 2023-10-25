// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

class CrashReportFAB extends StatelessWidget {
  const CrashReportFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => launchUrlString('tel:15666560'),
      tooltip: '사고 접수',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customIcon(
            Assets.svg.icoEdit.path,
            size: 30.adaptSize,
          ),
          SizedBox(height: 1.v),
          Text(
            '사고 접수',
            style: textTheme.bodySmall!.tint(Colors.black).bold,
          ),
        ],
      ),
    );
  }
}
