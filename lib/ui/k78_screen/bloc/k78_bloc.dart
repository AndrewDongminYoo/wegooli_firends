// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k78_screen/models/k78_model.dart';

part 'k78_event.dart';
part 'k78_state.dart';

/// A bloc that manages the state of a K78 according to the event that is dispatched to it.
class K78Bloc extends Bloc<K78Event, K78State> {
  K78Bloc(K78State initialState) : super(initialState) {
    on<K78InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K78InitialEvent event,
    Emitter<K78State> emit,
  ) async {}
}
