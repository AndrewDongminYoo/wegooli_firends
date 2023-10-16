import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_subscribe_info_screen/models/mypage_subscribe_info_model.dart';
part 'mypage_subscribe_info_event.dart';
part 'mypage_subscribe_info_state.dart';

/// A bloc that manages the state of a MyPageSubscribeInfo according to the event that is dispatched to it.
class MyPageSubscribeInfoBloc
    extends Bloc<MyPageSubscribeInfoEvent, MyPageSubscribeInfoState> {
  MyPageSubscribeInfoBloc(MyPageSubscribeInfoState initialState)
      : super(initialState) {
    on<MyPageSubscribeInfoInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    MyPageSubscribeInfoInitialEvent event,
    Emitter<MyPageSubscribeInfoState> emit,
  ) async {}
}
