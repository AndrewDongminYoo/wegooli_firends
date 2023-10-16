// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/models/schedules_send_invitation_leader_only_model.dart';

part 'schedules_send_invitation_leader_only_event.dart';
part 'schedules_send_invitation_leader_only_state.dart';

/// A bloc that manages the state of a SchedulesSendInvitationLeaderOnly according to the event that is dispatched to it.
class SchedulesSendInvitationLeaderOnlyBloc extends Bloc<
    SchedulesSendInvitationLeaderOnlyEvent,
    SchedulesSendInvitationLeaderOnlyState> {
  SchedulesSendInvitationLeaderOnlyBloc(
      SchedulesSendInvitationLeaderOnlyState initialState)
      : super(initialState) {
    on<SchedulesSendInvitationLeaderOnlyInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SchedulesSendInvitationLeaderOnlyInitialEvent event,
    Emitter<SchedulesSendInvitationLeaderOnlyState> emit,
  ) async {
    emit(state.copyWith(valueoneController: TextEditingController()));
  }
}
