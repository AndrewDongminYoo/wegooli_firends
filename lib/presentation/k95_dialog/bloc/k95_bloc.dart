// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k95_dialog/models/k95_model.dart';

part 'k95_event.dart';
part 'k95_state.dart';

/// A bloc that manages the state of a K95 according to the event that is dispatched to it.
class K95Bloc extends Bloc<K95Event, K95State> {
  K95Bloc(K95State initialState) : super(initialState) {
    on<K95InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K95InitialEvent event,
    Emitter<K95State> emit,
  ) async {
    emit(state.copyWith(tfController: TextEditingController()));
  }
}
