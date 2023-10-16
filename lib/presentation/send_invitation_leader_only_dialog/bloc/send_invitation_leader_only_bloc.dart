// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/send_invitation_leader_only_dialog/models/send_invitation_leader_only_model.dart';

part 'send_invitation_leader_only_event.dart';
part 'send_invitation_leader_only_state.dart';

/// A bloc that manages the state of a SendInvitationLeaderOnly according to the event that is dispatched to it.
class SendInvitationLeaderOnlyBloc
    extends Bloc<SendInvitationLeaderOnlyEvent, SendInvitationLeaderOnlyState> {
  SendInvitationLeaderOnlyBloc(SendInvitationLeaderOnlyState initialState)
      : super(initialState) {
    on<SendInvitationLeaderOnlyInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SendInvitationLeaderOnlyInitialEvent event,
    Emitter<SendInvitationLeaderOnlyState> emit,
  ) async {
    emit(state.copyWith(valueoneController: TextEditingController()));
  }
}
