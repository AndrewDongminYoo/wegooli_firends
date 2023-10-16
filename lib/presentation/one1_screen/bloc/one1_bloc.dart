import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/one1_screen/models/one1_model.dart';
part 'one1_event.dart';
part 'one1_state.dart';

/// A bloc that manages the state of a One1 according to the event that is dispatched to it.
class One1Bloc extends Bloc<One1Event, One1State> {
  One1Bloc(One1State initialState) : super(initialState) {
    on<One1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    One1InitialEvent event,
    Emitter<One1State> emit,
  ) async {}
}
