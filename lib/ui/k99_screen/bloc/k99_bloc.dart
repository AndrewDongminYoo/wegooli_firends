// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k99_screen/models/k99_model.dart';

part 'k99_event.dart';
part 'k99_state.dart';

/// A bloc that manages the state of a K99 according to the event that is dispatched to it.
class K99Bloc extends Bloc<K99Event, K99State> {
  K99Bloc(K99State initialState) : super(initialState) {
    on<K99InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K99InitialEvent event,
    Emitter<K99State> emit,
  ) async {}
}
