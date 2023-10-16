// ignore_for_file: must_be_immutable

part of 'schedules_send_invitation_leader_only_bloc.dart';

/// Represents the state of SchedulesSendInvitationLeaderOnly in the application.
class SchedulesSendInvitationLeaderOnlyState extends Equatable {
  SchedulesSendInvitationLeaderOnlyState({
    this.valueoneController,
    this.schedulesSendInvitationLeaderOnlyModelObj,
  });

  TextEditingController? valueoneController;

  SchedulesSendInvitationLeaderOnlyModel?
      schedulesSendInvitationLeaderOnlyModelObj;

  @override
  List<Object?> get props => [
        valueoneController,
        schedulesSendInvitationLeaderOnlyModelObj,
      ];
  SchedulesSendInvitationLeaderOnlyState copyWith({
    TextEditingController? valueoneController,
    SchedulesSendInvitationLeaderOnlyModel?
        schedulesSendInvitationLeaderOnlyModelObj,
  }) {
    return SchedulesSendInvitationLeaderOnlyState(
      valueoneController: valueoneController ?? this.valueoneController,
      schedulesSendInvitationLeaderOnlyModelObj:
          schedulesSendInvitationLeaderOnlyModelObj ??
              this.schedulesSendInvitationLeaderOnlyModelObj,
    );
  }
}
