// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k108_bottomsheet/models/k108_model.dart';

part 'k108_event.dart';
part 'k108_state.dart';

/// A bloc that manages the state of a K108 according to the event that is dispatched to it.
class K108Bloc extends Bloc<K108Event, K108State> {
  K108Bloc(K108State initialState) : super(initialState) {
    on<K108InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K108InitialEvent event,
    Emitter<K108State> emit,
  ) async {}
}
