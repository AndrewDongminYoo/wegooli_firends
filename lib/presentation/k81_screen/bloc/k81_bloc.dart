// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k81_screen/models/k81_model.dart';

part 'k81_event.dart';
part 'k81_state.dart';

/// A bloc that manages the state of a K81 according to the event that is dispatched to it.
class K81Bloc extends Bloc<K81Event, K81State> {
  K81Bloc(K81State initialState) : super(initialState) {
    on<K81InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K81InitialEvent event,
    Emitter<K81State> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        currentnicknameController: TextEditingController(),
        zipcodeController: TextEditingController(),
        tfController: TextEditingController()));
  }
}
