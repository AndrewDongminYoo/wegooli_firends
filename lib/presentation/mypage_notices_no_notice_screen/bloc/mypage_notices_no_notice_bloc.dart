import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_notices_no_notice_screen/models/mypage_notices_no_notice_model.dart';
part 'mypage_notices_no_notice_event.dart';
part 'mypage_notices_no_notice_state.dart';

/// A bloc that manages the state of a MyPageNoticesNoNotice according to the event that is dispatched to it.
class MyPageNoticesNoNoticeBloc
    extends Bloc<MyPageNoticesNoNoticeEvent, MyPageNoticesNoNoticeState> {
  MyPageNoticesNoNoticeBloc(MyPageNoticesNoNoticeState initialState)
      : super(initialState) {
    on<MyPageNoticesNoNoticeInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageNoticesNoNoticeInitialEvent event,
    Emitter<MyPageNoticesNoNoticeState> emit,
  ) async {}
}
