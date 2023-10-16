import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k113_screen/models/k113_model.dart';
part 'k113_event.dart';
part 'k113_state.dart';

/// A bloc that manages the state of a K113 according to the event that is dispatched to it.
class K113Bloc extends Bloc<K113Event, K113State> {
  K113Bloc(K113State initialState) : super(initialState) {
    on<K113InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K113InitialEvent event,
    Emitter<K113State> emit,
  ) async {}
}
