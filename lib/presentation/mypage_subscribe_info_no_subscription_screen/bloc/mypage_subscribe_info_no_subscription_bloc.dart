// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_subscribe_info_no_subscription_screen/models/mypage_subscribe_info_no_subscription_model.dart';

part 'mypage_subscribe_info_no_subscription_event.dart';
part 'mypage_subscribe_info_no_subscription_state.dart';

/// A bloc that manages the state of a MyPageSubscribeInfoNoSubscription according to the event that is dispatched to it.
class MyPageSubscribeInfoNoSubscriptionBloc extends Bloc<
    MyPageSubscribeInfoNoSubscriptionEvent,
    MyPageSubscribeInfoNoSubscriptionState> {
  MyPageSubscribeInfoNoSubscriptionBloc(
      MyPageSubscribeInfoNoSubscriptionState initialState)
      : super(initialState) {
    on<MyPageSubscribeInfoNoSubscriptionInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageSubscribeInfoNoSubscriptionInitialEvent event,
    Emitter<MyPageSubscribeInfoNoSubscriptionState> emit,
  ) async {}
}
