// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_contact_us_inquiry_history_expanded_tab_container_screen/models/mypage_contact_us_inquiry_history_expanded_tab_container_model.dart';

part 'mypage_contact_us_inquiry_history_expanded_tab_container_event.dart';
part 'mypage_contact_us_inquiry_history_expanded_tab_container_state.dart';

/// A bloc that manages the state of a MyPageContactUsInquiryHistoryExpandedTabContainer according to the event that is dispatched to it.
class MyPageContactUsInquiryHistoryExpandedTabContainerBloc extends Bloc<
    MyPageContactUsInquiryHistoryExpandedTabContainerEvent,
    MyPageContactUsInquiryHistoryExpandedTabContainerState> {
  MyPageContactUsInquiryHistoryExpandedTabContainerBloc(
      MyPageContactUsInquiryHistoryExpandedTabContainerState initialState)
      : super(initialState) {
    on<MyPageContactUsInquiryHistoryExpandedTabContainerInitialEvent>(
        _onInitialize);
  }

  Future<void> _onInitialize(
    MyPageContactUsInquiryHistoryExpandedTabContainerInitialEvent event,
    Emitter<MyPageContactUsInquiryHistoryExpandedTabContainerState> emit,
  ) async {}
}
