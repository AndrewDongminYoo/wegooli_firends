// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/smart_key_another_is_currently_using_screen/models/smart_key_another_is_currently_using_model.dart';

part 'smart_key_another_is_currently_using_event.dart';
part 'smart_key_another_is_currently_using_state.dart';

/// A bloc that manages the state of a SmartKeyAnotherIsCurrentlyUsing according to the event that is dispatched to it.
class SmartKeyAnotherIsCurrentlyUsingBloc extends Bloc<
    SmartKeyAnotherIsCurrentlyUsingEvent,
    SmartKeyAnotherIsCurrentlyUsingState> {
  SmartKeyAnotherIsCurrentlyUsingBloc(
      SmartKeyAnotherIsCurrentlyUsingState initialState)
      : super(initialState) {
    on<SmartKeyAnotherIsCurrentlyUsingInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SmartKeyAnotherIsCurrentlyUsingInitialEvent event,
    Emitter<SmartKeyAnotherIsCurrentlyUsingState> emit,
  ) async {}
}
