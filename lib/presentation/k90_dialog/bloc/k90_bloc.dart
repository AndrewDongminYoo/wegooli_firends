// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k90_dialog/models/k90_model.dart';

part 'k90_event.dart';
part 'k90_state.dart';

/// A bloc that manages the state of a K90 according to the event that is dispatched to it.
class K90Bloc extends Bloc<K90Event, K90State> {
  K90Bloc(K90State initialState) : super(initialState) {
    on<K90InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K90InitialEvent event,
    Emitter<K90State> emit,
  ) async {
    emit(state.copyWith(valueoneController: TextEditingController()));
  }
}
