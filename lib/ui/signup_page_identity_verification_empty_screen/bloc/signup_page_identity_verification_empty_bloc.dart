// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/signup_page_identity_verification_empty_screen/models/signup_page_identity_verification_empty_model.dart';

part 'signup_page_identity_verification_empty_event.dart';
part 'signup_page_identity_verification_empty_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationEmpty according to the event that is dispatched to it.
class SignupPageIdentityVerificationEmptyBloc extends Bloc<
    SignupPageIdentityVerificationEmptyEvent,
    SignupPageIdentityVerificationEmptyState> {
  SignupPageIdentityVerificationEmptyBloc(
      SignupPageIdentityVerificationEmptyState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationEmptyInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SignupPageIdentityVerificationEmptyInitialEvent event,
    Emitter<SignupPageIdentityVerificationEmptyState> emit,
  ) async {
    emit(state.copyWith(
        nameinputoneController: TextEditingController(),
        phonenumberoneController: TextEditingController()));
  }
}
