import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/calendar1_item_model.dart';
import 'package:wegooli_friends_app/presentation/schedules_team_is_full_screen/models/schedules_team_is_full_model.dart';
part 'schedules_team_is_full_event.dart';
part 'schedules_team_is_full_state.dart';

/// A bloc that manages the state of a SchedulesTeamIsFull according to the event that is dispatched to it.
class SchedulesTeamIsFullBloc
    extends Bloc<SchedulesTeamIsFullEvent, SchedulesTeamIsFullState> {
  SchedulesTeamIsFullBloc(SchedulesTeamIsFullState initialState)
      : super(initialState) {
    on<SchedulesTeamIsFullInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SchedulesTeamIsFullInitialEvent event,
    Emitter<SchedulesTeamIsFullState> emit,
  ) async {
    emit(state.copyWith(
        schedulesTeamIsFullModelObj:
            state.schedulesTeamIsFullModelObj?.copyWith(
      calendar1ItemList: fillCalendar1ItemList(),
    )));
  }

  List<Calendar1ItemModel> fillCalendar1ItemList() {
    return List.generate(7, (index) => Calendar1ItemModel());
  }
}
