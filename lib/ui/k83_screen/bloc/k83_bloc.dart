// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k83_screen/models/k83_model.dart';

part 'k83_event.dart';
part 'k83_state.dart';

/// A bloc that manages the state of a K83 according to the event that is dispatched to it.
class K83Bloc extends Bloc<K83Event, K83State> {
  K83Bloc(K83State initialState) : super(initialState) {
    on<K83InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K83InitialEvent event,
    Emitter<K83State> emit,
  ) async {}
}
