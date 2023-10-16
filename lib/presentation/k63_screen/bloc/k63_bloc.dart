import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k63_screen/models/k63_model.dart';
part 'k63_event.dart';
part 'k63_state.dart';

/// A bloc that manages the state of a K63 according to the event that is dispatched to it.
class K63Bloc extends Bloc<K63Event, K63State> {
  K63Bloc(K63State initialState) : super(initialState) {
    on<K63InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K63InitialEvent event,
    Emitter<K63State> emit,
  ) async {
    emit(state.copyWith(
        tfController: TextEditingController(),
        oneController: TextEditingController(),
        twoController: TextEditingController(),
        threeController: TextEditingController()));
  }
}
