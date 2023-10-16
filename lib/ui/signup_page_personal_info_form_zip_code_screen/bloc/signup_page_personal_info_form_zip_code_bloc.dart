// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/signup_page_personal_info_form_zip_code_screen/models/signup_page_personal_info_form_zip_code_model.dart';

part 'signup_page_personal_info_form_zip_code_event.dart';
part 'signup_page_personal_info_form_zip_code_state.dart';

/// A bloc that manages the state of a SignupPagePersonalInfoFormZipCode according to the event that is dispatched to it.
class SignupPagePersonalInfoFormZipCodeBloc extends Bloc<
    SignupPagePersonalInfoFormZipCodeEvent,
    SignupPagePersonalInfoFormZipCodeState> {
  SignupPagePersonalInfoFormZipCodeBloc(
      SignupPagePersonalInfoFormZipCodeState initialState)
      : super(initialState) {
    on<SignupPagePersonalInfoFormZipCodeInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SignupPagePersonalInfoFormZipCodeInitialEvent event,
    Emitter<SignupPagePersonalInfoFormZipCodeState> emit,
  ) async {
    emit(state.copyWith(
        postalcodeoneController: TextEditingController(),
        defaultaddressController: TextEditingController(),
        detailedaddressController: TextEditingController(),
        emailaddressController: TextEditingController(),
        eyecrossedoutController: TextEditingController(),
        passwordreentryController: TextEditingController(),
        nicknameinputController: TextEditingController()));
  }
}
