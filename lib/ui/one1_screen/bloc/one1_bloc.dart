// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/one1_screen/models/one1_model.dart';

part 'one1_event.dart';
part 'one1_state.dart';

/// A bloc that manages the state of a One1 according to the event that is dispatched to it.
class One1Bloc extends Bloc<One1Event, One1State> {
  One1Bloc(One1State initialState) : super(initialState) {
    on<One1InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    One1InitialEvent event,
    Emitter<One1State> emit,
  ) async {}
}
