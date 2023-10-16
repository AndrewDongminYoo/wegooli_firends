// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signup_page_identity_verification_terms_bottomsheet_screen/models/signup_page_identity_verification_terms_bottomsheet_model.dart';

part 'signup_page_identity_verification_terms_bottomsheet_event.dart';
part 'signup_page_identity_verification_terms_bottomsheet_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationTermsBottomsheet according to the event that is dispatched to it.
class SignupPageIdentityVerificationTermsBottomsheetBloc extends Bloc<
    SignupPageIdentityVerificationTermsBottomsheetEvent,
    SignupPageIdentityVerificationTermsBottomsheetState> {
  SignupPageIdentityVerificationTermsBottomsheetBloc(
      SignupPageIdentityVerificationTermsBottomsheetState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationTermsBottomsheetInitialEvent>(
        _onInitialize);
  }

  Future<void> _onInitialize(
    SignupPageIdentityVerificationTermsBottomsheetInitialEvent event,
    Emitter<SignupPageIdentityVerificationTermsBottomsheetState> emit,
  ) async {
    emit(state.copyWith(tfController: TextEditingController()));
  }
}
