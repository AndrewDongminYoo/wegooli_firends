// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/schedules_team_is_not_full_screen/models/schedules_team_is_not_full_model.dart';
import '/presentation/schedules_team_is_not_full_screen/models/userage_item_model.dart';
import '/presentation/schedules_team_is_not_full_screen/models/userprofile_item_model.dart';

part 'schedules_team_is_not_full_event.dart';
part 'schedules_team_is_not_full_state.dart';

/// A bloc that manages the state of a SchedulesTeamIsNotFull according to the event that is dispatched to it.
class SchedulesTeamIsNotFullBloc
    extends Bloc<SchedulesTeamIsNotFullEvent, SchedulesTeamIsNotFullState> {
  SchedulesTeamIsNotFullBloc(SchedulesTeamIsNotFullState initialState)
      : super(initialState) {
    on<SchedulesTeamIsNotFullInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
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
