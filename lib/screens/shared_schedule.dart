// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class TeamScheduleShare extends StatefulWidget {
  @override
  State<TeamScheduleShare> createState() => _TeamScheduleShareState();
}

class _TeamScheduleShareState extends State<TeamScheduleShare> {
  ScheduleController controller = ScheduleController.to;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: SharedCalendar(),
            bottomNavigationBar: BottomTabRouterBar()));
  }
}
