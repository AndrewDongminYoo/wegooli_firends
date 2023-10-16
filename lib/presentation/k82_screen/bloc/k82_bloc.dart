// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k82_screen/models/k82_model.dart';

part 'k82_event.dart';
part 'k82_state.dart';

/// A bloc that manages the state of a K82 according to the event that is dispatched to it.
class K82Bloc extends Bloc<K82Event, K82State> {
  K82Bloc(K82State initialState) : super(initialState) {
    on<K82InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K82InitialEvent event,
    Emitter<K82State> emit,
  ) async {}
}
