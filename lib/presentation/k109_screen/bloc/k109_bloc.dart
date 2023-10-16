// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k109_screen/models/k109_model.dart';

part 'k109_event.dart';
part 'k109_state.dart';

/// A bloc that manages the state of a K109 according to the event that is dispatched to it.
class K109Bloc extends Bloc<K109Event, K109State> {
  K109Bloc(K109State initialState) : super(initialState) {
    on<K109InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K109InitialEvent event,
    Emitter<K109State> emit,
  ) async {}
}
