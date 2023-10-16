// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/one_screen/models/one_model.dart';

part 'one_event.dart';
part 'one_state.dart';

/// A bloc that manages the state of a One according to the event that is dispatched to it.
class OneBloc extends Bloc<OneEvent, OneState> {
  OneBloc(OneState initialState) : super(initialState) {
    on<OneInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    OneInitialEvent event,
    Emitter<OneState> emit,
  ) async {
    emit(state.copyWith(
        nameinputoneController: TextEditingController(),
        dateformatoneController: TextEditingController(),
        settingsController: TextEditingController(),
        phonenumberoneController: TextEditingController()));
  }
}
