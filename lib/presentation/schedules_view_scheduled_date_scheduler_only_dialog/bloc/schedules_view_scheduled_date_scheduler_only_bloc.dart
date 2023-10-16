import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/schedules_view_scheduled_date_scheduler_only_dialog/models/schedules_view_scheduled_date_scheduler_only_model.dart';
part 'schedules_view_scheduled_date_scheduler_only_event.dart';
part 'schedules_view_scheduled_date_scheduler_only_state.dart';

/// A bloc that manages the state of a SchedulesViewScheduledDateSchedulerOnly according to the event that is dispatched to it.
class SchedulesViewScheduledDateSchedulerOnlyBloc extends Bloc<
    SchedulesViewScheduledDateSchedulerOnlyEvent,
    SchedulesViewScheduledDateSchedulerOnlyState> {
  SchedulesViewScheduledDateSchedulerOnlyBloc(
      SchedulesViewScheduledDateSchedulerOnlyState initialState)
      : super(initialState) {
    on<SchedulesViewScheduledDateSchedulerOnlyInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    SchedulesViewScheduledDateSchedulerOnlyInitialEvent event,
    Emitter<SchedulesViewScheduledDateSchedulerOnlyState> emit,
  ) async {}
}
