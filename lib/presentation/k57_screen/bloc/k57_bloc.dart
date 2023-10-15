import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k57_screen/models/k57_model.dart';
part 'k57_event.dart';
part 'k57_state.dart';

/// A bloc that manages the state of a K57 according to the event that is dispatched to it.
class K57Bloc extends Bloc<K57Event, K57State> {
  K57Bloc(K57State initialState) : super(initialState) {
    on<K57InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K57InitialEvent event,
    Emitter<K57State> emit,
  ) async {}
}
