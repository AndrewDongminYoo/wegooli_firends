// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signup_page_identity_verification_filled_screen/models/signup_page_identity_verification_filled_model.dart';

part 'signup_page_identity_verification_filled_event.dart';
part 'signup_page_identity_verification_filled_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationFilled according to the event that is dispatched to it.
class SignupPageIdentityVerificationFilledBloc extends Bloc<
    SignupPageIdentityVerificationFilledEvent,
    SignupPageIdentityVerificationFilledState> {
  SignupPageIdentityVerificationFilledBloc(
      SignupPageIdentityVerificationFilledState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationFilledInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SignupPageIdentityVerificationFilledInitialEvent event,
    Emitter<SignupPageIdentityVerificationFilledState> emit,
  ) async {
    emit(state.copyWith(
        nameoneController: TextEditingController(),
        phoneinfooneController: TextEditingController()));
  }
}
