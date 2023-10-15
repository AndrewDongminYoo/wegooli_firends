import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k51_bottomsheet/models/k51_model.dart';
part 'k51_event.dart';
part 'k51_state.dart';

/// A bloc that manages the state of a K51 according to the event that is dispatched to it.
class K51Bloc extends Bloc<K51Event, K51State> {
  K51Bloc(K51State initialState) : super(initialState) {
    on<K51InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
    on<ChangeCheckBox6Event>(_changeCheckBox6);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      totalAgreement: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      tf: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      tf1: event.value,
    ));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      tf2: event.value,
    ));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      tf3: event.value,
    ));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      tf4: event.value,
    ));
  }

  _changeCheckBox6(
    ChangeCheckBox6Event event,
    Emitter<K51State> emit,
  ) {
    emit(state.copyWith(
      tf5: event.value,
    ));
  }

  _onInitialize(
    K51InitialEvent event,
    Emitter<K51State> emit,
  ) async {
    emit(state.copyWith(
      totalAgreement: false,
      tf: false,
      tf1: false,
      tf2: false,
      tf3: false,
      tf4: false,
      tf5: false,
    ));
  }
}
