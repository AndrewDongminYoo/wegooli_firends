// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/smart_key_screen/models/smart_key_model.dart';

part 'smart_key_event.dart';
part 'smart_key_state.dart';

/// A bloc that manages the state of a SmartKey according to the event that is dispatched to it.
class SmartKeyBloc extends Bloc<SmartKeyEvent, SmartKeyState> {
  SmartKeyBloc(SmartKeyState initialState) : super(initialState) {
    on<SmartKeyInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SmartKeyInitialEvent event,
    Emitter<SmartKeyState> emit,
  ) async {}
}
