import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k74_screen/models/k74_model.dart';
part 'k74_event.dart';
part 'k74_state.dart';

/// A bloc that manages the state of a K74 according to the event that is dispatched to it.
class K74Bloc extends Bloc<K74Event, K74State> {
  K74Bloc(K74State initialState) : super(initialState) {
    on<K74InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K74InitialEvent event,
    Emitter<K74State> emit,
  ) async {
    emit(state.copyWith(
      chatinputoneController: TextEditingController(),
    ));
  }
}
