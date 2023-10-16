// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k58_screen/models/k58_model.dart';

part 'k58_event.dart';
part 'k58_state.dart';

/// A bloc that manages the state of a K58 according to the event that is dispatched to it.
class K58Bloc extends Bloc<K58Event, K58State> {
  K58Bloc(K58State initialState) : super(initialState) {
    on<K58InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K58InitialEvent event,
    Emitter<K58State> emit,
  ) async {}
}
