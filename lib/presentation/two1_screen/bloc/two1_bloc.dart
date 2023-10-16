// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/two1_screen/models/two1_model.dart';

part 'two1_event.dart';
part 'two1_state.dart';

/// A bloc that manages the state of a Two1 according to the event that is dispatched to it.
class Two1Bloc extends Bloc<Two1Event, Two1State> {
  Two1Bloc(Two1State initialState) : super(initialState) {
    on<Two1InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    Two1InitialEvent event,
    Emitter<Two1State> emit,
  ) async {}
}
