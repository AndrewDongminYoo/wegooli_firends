// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k101_screen/models/k101_model.dart';

part 'k101_event.dart';
part 'k101_state.dart';

/// A bloc that manages the state of a K101 according to the event that is dispatched to it.
class K101Bloc extends Bloc<K101Event, K101State> {
  K101Bloc(K101State initialState) : super(initialState) {
    on<K101InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K101InitialEvent event,
    Emitter<K101State> emit,
  ) async {}
}
