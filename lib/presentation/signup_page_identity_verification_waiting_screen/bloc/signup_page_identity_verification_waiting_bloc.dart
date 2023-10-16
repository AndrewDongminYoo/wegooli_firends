// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signup_page_identity_verification_waiting_screen/models/signup_page_identity_verification_waiting_model.dart';

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

  Future<void> _onInitialize(
    SignupPageIdentityVerificationWaitingInitialEvent event,
    Emitter<SignupPageIdentityVerificationWaitingState> emit,
  ) async {
    emit(state.copyWith(
        nameoneController: TextEditingController(),
        zipcodeController: TextEditingController(),
        phonenumberoneController: TextEditingController()));
  }
}
