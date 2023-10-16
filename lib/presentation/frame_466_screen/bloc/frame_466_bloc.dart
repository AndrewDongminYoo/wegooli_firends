import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/frame_466_screen/models/frame_466_model.dart';
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

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      totalAgreement: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf1: event.value,
    ));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf2: event.value,
    ));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf3: event.value,
    ));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<Frame466State> emit,
  ) {
    emit(state.copyWith(
      tf4: event.value,
    ));
  }

  _onInitialize(
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
