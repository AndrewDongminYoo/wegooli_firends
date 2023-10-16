import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/send_invitation_leader_only_dialog/models/send_invitation_leader_only_model.dart';part 'send_invitation_leader_only_event.dart';part 'send_invitation_leader_only_state.dart';/// A bloc that manages the state of a SendInvitationLeaderOnly according to the event that is dispatched to it.
class SendInvitationLeaderOnlyBloc extends Bloc<SendInvitationLeaderOnlyEvent, SendInvitationLeaderOnlyState> {SendInvitationLeaderOnlyBloc(SendInvitationLeaderOnlyState initialState) : super(initialState) { on<SendInvitationLeaderOnlyInitialEvent>(_onInitialize); }

_onInitialize(SendInvitationLeaderOnlyInitialEvent event, Emitter<SendInvitationLeaderOnlyState> emit, ) async  { emit(state.copyWith(valueoneController: TextEditingController())); } 
 }
