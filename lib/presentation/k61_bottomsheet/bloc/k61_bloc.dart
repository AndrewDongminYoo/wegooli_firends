import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k61_bottomsheet/models/k61_model.dart';
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

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      totalAgreement: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      serviceAgreemen: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      privacyAgreemen: event.value,
    ));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      rentalAgreement: event.value,
    ));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      locationAgreeme: event.value,
    ));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      vehicleAgreemen: event.value,
    ));
  }

  _changeCheckBox6(
    ChangeCheckBox6Event event,
    Emitter<K61State> emit,
  ) {
    emit(state.copyWith(
      marketingAgreem: event.value,
    ));
  }

  _onInitialize(
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
