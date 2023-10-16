import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k82_screen/models/k82_model.dart';
part 'k82_event.dart';
part 'k82_state.dart';

/// A bloc that manages the state of a K82 according to the event that is dispatched to it.
class K82Bloc extends Bloc<K82Event, K82State> {
  K82Bloc(K82State initialState) : super(initialState) {
    on<K82InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K82InitialEvent event,
    Emitter<K82State> emit,
  ) async {}
}
