// ignore_for_file: must_be_immutable

part of 'send_invitation_leader_only_bloc.dart';

/// Represents the state of SendInvitationLeaderOnly in the application.
class SendInvitationLeaderOnlyState extends Equatable {
  SendInvitationLeaderOnlyState({
    this.valueoneController,
    this.sendInvitationLeaderOnlyModelObj,
  });

  TextEditingController? valueoneController;

  SendInvitationLeaderOnlyModel? sendInvitationLeaderOnlyModelObj;

  @override
  List<Object?> get props => [
        valueoneController,
        sendInvitationLeaderOnlyModelObj,
      ];
  SendInvitationLeaderOnlyState copyWith({
    TextEditingController? valueoneController,
    SendInvitationLeaderOnlyModel? sendInvitationLeaderOnlyModelObj,
  }) {
    return SendInvitationLeaderOnlyState(
      valueoneController: valueoneController ?? this.valueoneController,
      sendInvitationLeaderOnlyModelObj: sendInvitationLeaderOnlyModelObj ??
          this.sendInvitationLeaderOnlyModelObj,
    );
  }
}
