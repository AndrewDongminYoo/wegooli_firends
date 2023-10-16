// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/signup_complete_screen/models/signup_complete_model.dart';

part 'signup_complete_event.dart';
part 'signup_complete_state.dart';

/// A bloc that manages the state of a SignupComplete according to the event that is dispatched to it.
class SignupCompleteBloc
    extends Bloc<SignupCompleteEvent, SignupCompleteState> {
  SignupCompleteBloc(SignupCompleteState initialState) : super(initialState) {
    on<SignupCompleteInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SignupCompleteInitialEvent event,
    Emitter<SignupCompleteState> emit,
  ) async {}
}
