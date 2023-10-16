import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_expanded_tab_container_screen/models/mypage_contact_us_inquiry_history_expanded_tab_container_model.dart';
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

  void _onInitialize(
    MyPageContactUsInquiryHistoryExpandedTabContainerInitialEvent event,
    Emitter<MyPageContactUsInquiryHistoryExpandedTabContainerState> emit,
  ) async {}
}
