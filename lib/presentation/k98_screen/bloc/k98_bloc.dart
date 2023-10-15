import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k98_screen/models/k98_model.dart';
part 'k98_event.dart';
part 'k98_state.dart';

/// A bloc that manages the state of a K98 according to the event that is dispatched to it.
class K98Bloc extends Bloc<K98Event, K98State> {
  K98Bloc(K98State initialState) : super(initialState) {
    on<K98InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K98InitialEvent event,
    Emitter<K98State> emit,
  ) async {}
}
