// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/schedules_page/models/calendar_item_model.dart';
import '/presentation/schedules_page/models/schedules_model.dart';

part 'schedules_event.dart';
part 'schedules_state.dart';

/// A bloc that manages the state of a Schedules according to the event that is dispatched to it.
class SchedulesBloc extends Bloc<SchedulesEvent, SchedulesState> {
  SchedulesBloc(SchedulesState initialState) : super(initialState) {
    on<SchedulesInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SchedulesInitialEvent event,
    Emitter<SchedulesState> emit,
  ) async {
    emit(state.copyWith(
        schedulesModelObj: state.schedulesModelObj?.copyWith(
      calendarItemList: fillCalendarItemList(),
    )));
  }

  List<CalendarItemModel> fillCalendarItemList() {
    return List.generate(7, (index) => CalendarItemModel());
  }
}
