// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/frame_34850_screen/models/frame_34850_model.dart';

part 'frame_34850_event.dart';
part 'frame_34850_state.dart';

/// A bloc that manages the state of a Frame34850 according to the event that is dispatched to it.
class Frame34850Bloc extends Bloc<Frame34850Event, Frame34850State> {
  Frame34850Bloc(Frame34850State initialState) : super(initialState) {
    on<Frame34850InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  void _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<Frame34850State> emit,
  ) {
    emit(state.copyWith(
      totalAgreement: event.value,
    ));
  }

  void _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<Frame34850State> emit,
  ) {
    emit(state.copyWith(
      computer: event.value,
    ));
  }

  Future<void> _onInitialize(
    Frame34850InitialEvent event,
    Emitter<Frame34850State> emit,
  ) async {
    emit(state.copyWith(
      totalAgreement: false,
      computer: false,
    ));
  }
}
