import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/unsubscribe_confirm_dialog/models/unsubscribe_confirm_model.dart';
part 'unsubscribe_confirm_event.dart';
part 'unsubscribe_confirm_state.dart';

/// A bloc that manages the state of a UnsubscribeConfirm according to the event that is dispatched to it.
class UnsubscribeConfirmBloc
    extends Bloc<UnsubscribeConfirmEvent, UnsubscribeConfirmState> {
  UnsubscribeConfirmBloc(UnsubscribeConfirmState initialState)
      : super(initialState) {
    on<UnsubscribeConfirmInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    UnsubscribeConfirmInitialEvent event,
    Emitter<UnsubscribeConfirmState> emit,
  ) async {}
}
