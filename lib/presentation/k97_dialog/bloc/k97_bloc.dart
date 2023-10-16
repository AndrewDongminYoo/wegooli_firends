// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k97_dialog/models/k97_model.dart';

part 'k97_event.dart';
part 'k97_state.dart';

/// A bloc that manages the state of a K97 according to the event that is dispatched to it.
class K97Bloc extends Bloc<K97Event, K97State> {
  K97Bloc(K97State initialState) : super(initialState) {
    on<K97InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K97InitialEvent event,
    Emitter<K97State> emit,
  ) async {}
}
