import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_waiting_screen/models/signup_page_identity_verification_waiting_model.dart';
part 'signup_page_identity_verification_waiting_event.dart';
part 'signup_page_identity_verification_waiting_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationWaiting according to the event that is dispatched to it.
class SignupPageIdentityVerificationWaitingBloc extends Bloc<
    SignupPageIdentityVerificationWaitingEvent,
    SignupPageIdentityVerificationWaitingState> {
  SignupPageIdentityVerificationWaitingBloc(
      SignupPageIdentityVerificationWaitingState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationWaitingInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    SignupPageIdentityVerificationWaitingInitialEvent event,
    Emitter<SignupPageIdentityVerificationWaitingState> emit,
  ) async {
    emit(state.copyWith(
        nameoneController: TextEditingController(),
        zipcodeController: TextEditingController(),
        phonenumberoneController: TextEditingController()));
  }
}
