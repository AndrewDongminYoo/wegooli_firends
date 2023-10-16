// ignore_for_file: must_be_immutable

part of 'schedules_send_invitation_leader_only_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SchedulesSendInvitationLeaderOnly widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesSendInvitationLeaderOnlyEvent extends Equatable {}

/// Event that is dispatched when the SchedulesSendInvitationLeaderOnly widget is first created.
class SchedulesSendInvitationLeaderOnlyInitialEvent
    extends SchedulesSendInvitationLeaderOnlyEvent {
  @override
  List<Object?> get props => [];
}
