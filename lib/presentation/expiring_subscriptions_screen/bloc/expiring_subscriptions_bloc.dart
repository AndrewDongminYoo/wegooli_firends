// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/expiring_subscriptions_screen/models/expiring_subscriptions_model.dart';

part 'expiring_subscriptions_event.dart';
part 'expiring_subscriptions_state.dart';

/// A bloc that manages the state of a ExpiringSubscriptions according to the event that is dispatched to it.
class ExpiringSubscriptionsBloc
    extends Bloc<ExpiringSubscriptionsEvent, ExpiringSubscriptionsState> {
  ExpiringSubscriptionsBloc(ExpiringSubscriptionsState initialState)
      : super(initialState) {
    on<ExpiringSubscriptionsInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    ExpiringSubscriptionsInitialEvent event,
    Emitter<ExpiringSubscriptionsState> emit,
  ) async {}
}
