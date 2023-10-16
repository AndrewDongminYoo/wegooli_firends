// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k60_screen/models/k60_model.dart';

part 'k60_event.dart';
part 'k60_state.dart';

/// A bloc that manages the state of a K60 according to the event that is dispatched to it.
class K60Bloc extends Bloc<K60Event, K60State> {
  K60Bloc(K60State initialState) : super(initialState) {
    on<K60InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K60InitialEvent event,
    Emitter<K60State> emit,
  ) async {
    emit(state.copyWith(
      idoneController: TextEditingController(),
      passwordoneController: TextEditingController(),
    ));
  }
}