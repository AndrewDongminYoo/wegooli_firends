// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_subscribe_info_screen/models/mypage_subscribe_info_model.dart';

part 'mypage_subscribe_info_event.dart';
part 'mypage_subscribe_info_state.dart';

/// A bloc that manages the state of a MyPageSubscribeInfo according to the event that is dispatched to it.
class MyPageSubscribeInfoBloc
    extends Bloc<MyPageSubscribeInfoEvent, MyPageSubscribeInfoState> {
  MyPageSubscribeInfoBloc(MyPageSubscribeInfoState initialState)
      : super(initialState) {
    on<MyPageSubscribeInfoInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageSubscribeInfoInitialEvent event,
    Emitter<MyPageSubscribeInfoState> emit,
  ) async {}
}
