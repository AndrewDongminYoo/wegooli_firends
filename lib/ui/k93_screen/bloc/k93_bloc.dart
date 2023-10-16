// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k93_screen/models/k93_model.dart';

part 'k93_event.dart';
part 'k93_state.dart';

/// A bloc that manages the state of a K93 according to the event that is dispatched to it.
class K93Bloc extends Bloc<K93Event, K93State> {
  K93Bloc(K93State initialState) : super(initialState) {
    on<K93InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K93InitialEvent event,
    Emitter<K93State> emit,
  ) async {}
}