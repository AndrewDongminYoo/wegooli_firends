import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/one6_screen/models/one6_model.dart';
part 'one6_event.dart';
part 'one6_state.dart';

/// A bloc that manages the state of a One6 according to the event that is dispatched to it.
class One6Bloc extends Bloc<One6Event, One6State> {
  One6Bloc(One6State initialState) : super(initialState) {
    on<One6InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    One6InitialEvent event,
    Emitter<One6State> emit,
  ) async {}
}
