// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k96_dialog/models/k96_model.dart';

part 'k96_event.dart';
part 'k96_state.dart';

/// A bloc that manages the state of a K96 according to the event that is dispatched to it.
class K96Bloc extends Bloc<K96Event, K96State> {
  K96Bloc(K96State initialState) : super(initialState) {
    on<K96InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K96InitialEvent event,
    Emitter<K96State> emit,
  ) async {
    emit(state.copyWith(codeoneController: TextEditingController()));
  }
}
