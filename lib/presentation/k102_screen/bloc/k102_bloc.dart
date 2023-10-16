// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k102_screen/models/k102_model.dart';

part 'k102_event.dart';
part 'k102_state.dart';

/// A bloc that manages the state of a K102 according to the event that is dispatched to it.
class K102Bloc extends Bloc<K102Event, K102State> {
  K102Bloc(K102State initialState) : super(initialState) {
    on<K102InitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  Future<void> _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<K102State> emit,
  ) async {
    emit(state.copyWith(radioGroup: event.value));
  }

  Future<void> _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<K102State> emit,
  ) async {
    emit(state.copyWith(radioGroup1: event.value));
  }

  Future<void> _onInitialize(
    K102InitialEvent event,
    Emitter<K102State> emit,
  ) async {
    emit(state.copyWith(radioGroup: '', radioGroup1: ''));
  }
}
