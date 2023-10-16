// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k98_screen/models/k98_model.dart';

part 'k98_event.dart';
part 'k98_state.dart';

/// A bloc that manages the state of a K98 according to the event that is dispatched to it.
class K98Bloc extends Bloc<K98Event, K98State> {
  K98Bloc(K98State initialState) : super(initialState) {
    on<K98InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K98InitialEvent event,
    Emitter<K98State> emit,
  ) async {}
}
