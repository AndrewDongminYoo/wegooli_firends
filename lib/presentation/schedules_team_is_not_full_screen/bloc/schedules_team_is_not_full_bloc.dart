import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import '../models/userage_item_model.dart';
import 'package:wegooli_friends_app/presentation/schedules_team_is_not_full_screen/models/schedules_team_is_not_full_model.dart';
part 'schedules_team_is_not_full_event.dart';
part 'schedules_team_is_not_full_state.dart';

/// A bloc that manages the state of a SchedulesTeamIsNotFull according to the event that is dispatched to it.
class SchedulesTeamIsNotFullBloc
    extends Bloc<SchedulesTeamIsNotFullEvent, SchedulesTeamIsNotFullState> {
  SchedulesTeamIsNotFullBloc(SchedulesTeamIsNotFullState initialState)
      : super(initialState) {
    on<SchedulesTeamIsNotFullInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SchedulesTeamIsNotFullInitialEvent event,
    Emitter<SchedulesTeamIsNotFullState> emit,
  ) async {
    emit(state.copyWith(
        schedulesTeamIsNotFullModelObj:
            state.schedulesTeamIsNotFullModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
      userageItemList: fillUserageItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return List.generate(4, (index) => UserprofileItemModel());
  }

  List<UserageItemModel> fillUserageItemList() {
    return List.generate(7, (index) => UserageItemModel());
  }
}
