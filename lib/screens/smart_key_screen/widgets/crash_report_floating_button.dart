// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

class CrashReportFAB extends StatelessWidget {
  const CrashReportFAB({
    super.key,
    this.enabled = true,
  });

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: enabled ? () => launchUrlString('tel:15666560') : null,
      tooltip: '사고 접수',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customIcon(
            Assets.svg.icoEdit.path,
            size: 30.w,
          ),
          SizedBox(height: 1.h),
          Text(
            '사고 접수',
            style: textTheme.bodySmall!.tint(Colors.black).bold,
          ),
        ],
      ),
    );
  }
}
