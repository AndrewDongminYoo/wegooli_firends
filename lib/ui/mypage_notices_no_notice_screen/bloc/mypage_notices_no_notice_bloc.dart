// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/mypage_notices_no_notice_screen/models/mypage_notices_no_notice_model.dart';

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
