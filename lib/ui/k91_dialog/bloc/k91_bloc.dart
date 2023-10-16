// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k91_dialog/models/k91_model.dart';

part 'k91_event.dart';
part 'k91_state.dart';

/// A bloc that manages the state of a K91 according to the event that is dispatched to it.
class K91Bloc extends Bloc<K91Event, K91State> {
  K91Bloc(K91State initialState) : super(initialState) {
    on<K91InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K91InitialEvent event,
    Emitter<K91State> emit,
  ) async {}
}
