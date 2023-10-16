import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/one2_screen/models/one2_model.dart';
part 'one2_event.dart';
part 'one2_state.dart';

/// A bloc that manages the state of a One2 according to the event that is dispatched to it.
class One2Bloc extends Bloc<One2Event, One2State> {
  One2Bloc(One2State initialState) : super(initialState) {
    on<One2InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    One2InitialEvent event,
    Emitter<One2State> emit,
  ) async {}
}
