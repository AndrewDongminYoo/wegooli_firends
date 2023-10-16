// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_contact_us_inquiry_history_expanded_page/models/mypage_contact_us_inquiry_history_expanded_model.dart';

part 'mypage_contact_us_inquiry_history_expanded_event.dart';
part 'mypage_contact_us_inquiry_history_expanded_state.dart';

/// A bloc that manages the state of a MyPageContactUsInquiryHistoryExpanded according to the event that is dispatched to it.
class MyPageContactUsInquiryHistoryExpandedBloc extends Bloc<
    MyPageContactUsInquiryHistoryExpandedEvent,
    MyPageContactUsInquiryHistoryExpandedState> {
  MyPageContactUsInquiryHistoryExpandedBloc(
      MyPageContactUsInquiryHistoryExpandedState initialState)
      : super(initialState) {
    on<MyPageContactUsInquiryHistoryExpandedInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageContactUsInquiryHistoryExpandedInitialEvent event,
    Emitter<MyPageContactUsInquiryHistoryExpandedState> emit,
  ) async {}
}
