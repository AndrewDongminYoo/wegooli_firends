// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k112_screen/models/k112_model.dart';

part 'k112_event.dart';
part 'k112_state.dart';

/// A bloc that manages the state of a K112 according to the event that is dispatched to it.
class K112Bloc extends Bloc<K112Event, K112State> {
  K112Bloc(K112State initialState) : super(initialState) {
    on<K112InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K112InitialEvent event,
    Emitter<K112State> emit,
  ) async {}
}
