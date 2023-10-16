// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k80_screen/models/k80_model.dart';

part 'k80_event.dart';
part 'k80_state.dart';

/// A bloc that manages the state of a K80 according to the event that is dispatched to it.
class K80Bloc extends Bloc<K80Event, K80State> {
  K80Bloc(K80State initialState) : super(initialState) {
    on<K80InitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  Future<void> _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<K80State> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  Future<void> _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<K80State> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch1: event.value));
  }

  Future<void> _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<K80State> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch2: event.value));
  }

  Future<void> _onInitialize(
    K80InitialEvent event,
    Emitter<K80State> emit,
  ) async {
    emit(state.copyWith(
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
        isSelectedSwitch2: false));
  }
}
