// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k48_screen/models/k48_model.dart';

part 'k48_event.dart';
part 'k48_state.dart';

/// A bloc that manages the state of a K48 according to the event that is dispatched to it.
class K48Bloc extends Bloc<K48Event, K48State> {
  K48Bloc(K48State initialState) : super(initialState) {
    on<K48InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K48InitialEvent event,
    Emitter<K48State> emit,
  ) async {}
}
