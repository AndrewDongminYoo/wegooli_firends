// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k62_screen/models/k62_model.dart';

part 'k62_event.dart';
part 'k62_state.dart';

/// A bloc that manages the state of a K62 according to the event that is dispatched to it.
class K62Bloc extends Bloc<K62Event, K62State> {
  K62Bloc(K62State initialState) : super(initialState) {
    on<K62InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K62InitialEvent event,
    Emitter<K62State> emit,
  ) async {
    emit(state.copyWith(
        nameinputoneController: TextEditingController(),
        tfController: TextEditingController(),
        phonenumberoneController: TextEditingController(),
        sendverificatioController: TextEditingController()));
  }
}
