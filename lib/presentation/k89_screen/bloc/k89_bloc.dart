// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k89_screen/models/k89_model.dart';

part 'k89_event.dart';
part 'k89_state.dart';

/// A bloc that manages the state of a K89 according to the event that is dispatched to it.
class K89Bloc extends Bloc<K89Event, K89State> {
  K89Bloc(K89State initialState) : super(initialState) {
    on<K89InitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  Future<void> _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<K89State> emit,
  ) async {
    emit(state.copyWith(radioGroup: event.value));
  }

  Future<void> _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<K89State> emit,
  ) async {
    emit(state.copyWith(radioGroup1: event.value));
  }

  Future<void> _onInitialize(
    K89InitialEvent event,
    Emitter<K89State> emit,
  ) async {
    emit(state.copyWith(radioGroup: '', radioGroup1: ''));
  }
}
