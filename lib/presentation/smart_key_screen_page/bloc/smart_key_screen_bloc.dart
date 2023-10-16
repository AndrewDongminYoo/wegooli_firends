// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/smart_key_screen_page/models/smart_key_screen_model.dart';

part 'smart_key_screen_event.dart';
part 'smart_key_screen_state.dart';

/// A bloc that manages the state of a SmartKeyScreen according to the event that is dispatched to it.
class SmartKeyScreenBloc
    extends Bloc<SmartKeyScreenEvent, SmartKeyScreenState> {
  SmartKeyScreenBloc(SmartKeyScreenState initialState) : super(initialState) {
    on<SmartKeyScreenInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SmartKeyScreenInitialEvent event,
    Emitter<SmartKeyScreenState> emit,
  ) async {}
}
