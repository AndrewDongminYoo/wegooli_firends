import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k77_screen/models/k77_model.dart';
part 'k77_event.dart';
part 'k77_state.dart';

/// A bloc that manages the state of a K77 according to the event that is dispatched to it.
class K77Bloc extends Bloc<K77Event, K77State> {
  K77Bloc(K77State initialState) : super(initialState) {
    on<K77InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K77InitialEvent event,
    Emitter<K77State> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        currentnicknameController: TextEditingController(),
        tfController: TextEditingController(),
        zipcodeController: TextEditingController(),
        oneController: TextEditingController(),
        twoController: TextEditingController(),
        passwordcombinaController: TextEditingController(),
        passwordreenterController: TextEditingController()));
  }
}
