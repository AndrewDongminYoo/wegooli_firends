// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/one4_screen/models/one4_model.dart';

part 'one4_event.dart';
part 'one4_state.dart';

/// A bloc that manages the state of a One4 according to the event that is dispatched to it.
class One4Bloc extends Bloc<One4Event, One4State> {
  One4Bloc(One4State initialState) : super(initialState) {
    on<One4InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    One4InitialEvent event,
    Emitter<One4State> emit,
  ) async {}
}
