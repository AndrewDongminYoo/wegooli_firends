// ignore_for_file: must_be_immutable

part of 'send_invitation_leader_only_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SendInvitationLeaderOnly widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendInvitationLeaderOnlyEvent extends Equatable {}

/// Event that is dispatched when the SendInvitationLeaderOnly widget is first created.
class SendInvitationLeaderOnlyInitialEvent
    extends SendInvitationLeaderOnlyEvent {
  @override
  List<Object?> get props => [];
}
