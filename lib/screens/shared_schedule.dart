// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

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
    return CustomBottomAppBarLayout(
        body: SharedCalendar(),
        floatingActionButton: Semantics(
          container: true,
          sortKey: const OrdinalSortKey(0),
          child: FloatingActionButton(
            onPressed: () {},
            tooltip: l10ns.buttonTextCreate,
            child: const Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          notchedShape: const CircularNotchedRectangle(),
        ));
  }
}
