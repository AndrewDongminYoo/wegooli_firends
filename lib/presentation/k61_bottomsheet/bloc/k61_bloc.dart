// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k61_bottomsheet/models/k61_model.dart';

part 'k61_event.dart';
part 'k61_state.dart';

/// A bloc that manages the state of a K61 according to the event that is dispatched to it.
class K61Bloc extends Bloc<K61Event, K61State> {
  K61Bloc(K61State initialState) : super(initialState) {
    on<K61InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
    on<ChangeCheckBox6Event>(_changeCheckBox6);
  }

  void _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      totalAgreement: event.value,
    ));
  }

  void _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      serviceAgreemen: event.value,
    ));
  }

  void _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      privacyAgreemen: event.value,
    ));
  }

  void _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      rentalAgreement: event.value,
    ));
  }

  void _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      locationAgreeme: event.value,
    ));
  }

  void _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      vehicleAgreemen: event.value,
    ));
  }

  void _changeCheckBox6(
    ChangeCheckBox6Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      marketingAgreem: event.value,
    ));
  }

  Future<void> _onInitialize(
    K61InitialEvent event,
    Emitter<K61State> emit,
  ) async {
    emit(state.copyWith(
      totalAgreement: false,
      serviceAgreemen: false,
      privacyAgreemen: false,
      rentalAgreement: false,
      locationAgreeme: false,
      vehicleAgreemen: false,
      marketingAgreem: false,
    ));
  }
}
