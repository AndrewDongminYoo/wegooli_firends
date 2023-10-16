// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k104_screen/models/k104_model.dart';

part 'k104_event.dart';
part 'k104_state.dart';

/// A bloc that manages the state of a K104 according to the event that is dispatched to it.
class K104Bloc extends Bloc<K104Event, K104State> {
  K104Bloc(K104State initialState) : super(initialState) {
    on<K104InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K104InitialEvent event,
    Emitter<K104State> emit,
  ) async {
    emit(state.copyWith(
        cardnumberoneController: TextEditingController(),
        expirationdateController: TextEditingController(),
        zipcodeController: TextEditingController(),
        edittextController: TextEditingController()));
  }
}
