// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/frame_466_screen/models/frame_466_model.dart';

part 'frame_466_event.dart';
part 'frame_466_state.dart';

/// A bloc that manages the state of a Frame466 according to the event that is dispatched to it.
class Frame466Bloc extends Bloc<Frame466Event, Frame466State> {
  Frame466Bloc(Frame466State initialState) : super(initialState) {
    on<Frame466InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
  }

  void _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      totalAgreement: event.value,
    ));
  }

  void _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf: event.value,
    ));
  }

  void _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf1: event.value,
    ));
  }

  void _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf2: event.value,
    ));
  }

  void _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf3: event.value,
    ));
  }

  void _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf4: event.value,
    ));
  }

  Future<void> _onInitialize(
    Frame466InitialEvent event,
    Emitter<Frame466State> emit,
  ) async {
    emit(state.copyWith(
      totalAgreement: false,
      tf: false,
      tf1: false,
      tf2: false,
      tf3: false,
      tf4: false,
    ));
  }
}
