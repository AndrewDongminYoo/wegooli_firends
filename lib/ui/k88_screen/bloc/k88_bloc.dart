// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k88_screen/models/k88_model.dart';

part 'k88_event.dart';
part 'k88_state.dart';

/// A bloc that manages the state of a K88 according to the event that is dispatched to it.
class K88Bloc extends Bloc<K88Event, K88State> {
  K88Bloc(K88State initialState) : super(initialState) {
    on<K88InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K88InitialEvent event,
    Emitter<K88State> emit,
  ) async {}
}
